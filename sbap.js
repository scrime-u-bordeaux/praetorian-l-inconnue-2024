// constants
var nbspeakers = 8;
var interval = 1 / 8;
var minspeed = 0.1;
var maxspeed = 5;
var epsilon = 0.001;

var angleMultiplier = 1;
var angleOffset = 0.125;

// global vars
// mode can be 'static', 'moving', or 'hybrid'
var mode = 'hybrid'; 
var newpos = [0, 0];	
var lastpos = [0, 0];
var newcarpos = [0, 0];
var lastcarpos = [0, 0];
var lastdate = 0;

var staticGains = null;
var movingGains = null;

// median and mvavrg filters

function Median(d, s) {
	this.dim = d;
	this.size = s;
	this.filters = new Array(this.dim);

	for (var i = 0; i < this.dim; ++i) {
		this.filters[i] = new Array(this.size);
		for (var j = 0; j < this.size; ++j) {
			this.filters[i][j] = 0;
		}
	}	
		
	this.process = function(values) {
		var res = new Array(this.dim);

		for (var i = 0; i < this.dim; ++i) {
			if (true || values.length === this.dim) {
				var v = values[i];
				var f = this.filters[i];
				f.push(v);
				f.shift();
				var fcopy = f.slice(0);
				fcopy.sort(function(a, b) { return a - b; });
				res[i] = fcopy[Math.floor(this.size / 2)];
			} else {
				res[i] = 0;
			}
		}

		return res;
	}
}

function Mvavrg(d, s) {
	this.dim = d;
	this.size = s;
	this.filters = new Array(this.dim);
	
	for (var i = 0; i < this.dim; ++i) {
		this.filters[i] = new Array(this.size);;
		for (var j = 0; j < this.size; ++j) {
			this.filters[i][j] = 0;
		}
	}	
		
	this.process = function(values) {
		var res = new Array(this.dim);
		
		for (var i = 0; i < this.dim; ++i) {
			if (true || values.length === this.dim) {
				var v = values[i];
				var f = this.filters[i];
				f.push(v);
				var last = f.shift();
				var sum = 0;
				for (var j = 0; j < this.size; ++j) {
					sum += f[j];
				}
				res[i] = sum / this.size;
			} else {
				res[i] = 0;
			}
		}
		
		return res;
	}
}

var gainsMedian = new Median(nbspeakers, 5);
var gainsMvavrg = new Mvavrg(nbspeakers, 10);
var speedMedian = new Median(1, 10);
var speedMvavrg = new Mvavrg(1, 10);

outlets = 4;

// polar to cartesian coords converter

function poltocar(a, d) {
	return [
		Math.cos(a) * d,
		Math.sin(a) * d
	];
}
poltocar.local = 1;

// for use by computeStaticGains

function adaptAngle(a) {
	var res = (a * angleMultiplier + angleOffset) % 1;
	return (res > 0) ? (res % 1) : (1 - (Math.abs(res) % 1));
}
adaptAngle.local = 1;


function computeSpeed() {
	var now = Date.now();
	var dx = newcarpos[0] - lastcarpos[0];
	var dy = newcarpos[1] - lastcarpos[1];
	var dist = Math.sqrt(dx * dx + dy * dy);
	var speed = 1000 * dist / (now - lastdate);
	if (lastdate === now) {
		return 0;
	}
	lastdate = now;
	return speed;
}
computeSpeed.local = 1;

function computeDistance(x1, y1, x2, y2) {
	return Math.sqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2));
}
computeDistance.local = 1;

// compute intersection points between the unit circle
// and the line defined by [x,y] and [px,py] :

function computeIntersectionPoints(x, y, px, py) {
	// method 2 is fine
	var method = 2;

	if (method === 1) {
		var x2 = x;
		var y2 = y;
		var x1 = px;
		var y1 = py;
		var x_1, x_2;
	
		// compute a and b of y = ax + b
		var a = (y2 - y1) / (x2 - x1);
		var b = y1 - a * x1;
	
		// compute roots of x^2 + y^2 = 1 :
		// replace y by ax + b in  x^2 + y^2= 1
		// we now need to compute the roots of x^2 + (ax + b)^2 = 1
		// i.e (1 + a^2)x^2 + 2abx + b^2 - 1 = 0
		var aa = 1 + a * a;
		var bb = 2 * a * b;
		var cc = b * b - 1;
	
		var dis = bb * bb - 4 * aa * cc;
	
		if (dis > 0) {
			x_1 = ((-bb - Math.sqrt(dis))) / (2 * aa);
			x_2 = ((-bb + Math.sqrt(dis))) / (2 * aa);
		}
	
		return [
			x_1,
			a * x_1 + b,
			x_2,
			a * x_2 + b
		];
	}
	
	if (method === 2) {
		var dx = x - px;
		var dy = y - py;
		var drSqr = dx * dx + dy * dy;
		var dr = Math.sqrt(drSqr);
		var d = px * y - x * py;
		var detSqrt = Math.sqrt(drSqr - d * d);
		var sgndy = dy < 0 ? -1 : 1;
		var ddx = d * dx;
		var ddy = d * dy;
		
		var x1 = (ddy + sgndy * dx * detSqrt) / drSqr;
		var x2 = (ddy - sgndy * dx * detSqrt) / drSqr;
		var y1 = (-ddx + Math.abs(dy) * detSqrt) / drSqr;
		var y2 = (-ddx - Math.abs(dy) * detSqrt) / drSqr;
		
		var sqdpos = (x1 - x) * (x1 - x) + (y1 - y) * (y1 - y);
		var sqdppos = (x1 - px) * (x1 - px) + (y1 - py) * (y1 - py);

		// x1,y1 should be in front thus closer to x,y than px,py
		if (sqdpos > sqdppos) {
			var tmpx = x1, tmpy = y1;
			x1 = x2;
			y1 = y2;
			x2 = tmpx;
			y2 = tmpy;
		}		

		return [x1, y1, x2, y2];
	}
}
computeIntersectionPoints.local = 1;

function computeStaticGains(a, d) {
	d = 1 - Math.min(1, Math.max(0, d));
	d = d * d;
	var fraction = interval + d * (1 - interval);
	var gains = new Array(nbspeakers);
	var sum = 0;
	
	a = adaptAngle(a);
	
	for (var i = 0; i < nbspeakers; ++i) {
		var loca = i * interval;
		if (loca < a) loca += 1;
		var delta = loca - a;

		if (delta < fraction) {
			gains[i] = Math.cos(Math.PI * 0.5 * delta / fraction);
		} else {
			gains[i] = 0;
		}
		
		if (1 - delta < fraction) {
			gains[i] += Math.cos(Math.PI * 0.5 * (1 - delta) / fraction);
		}
		
		sum += gains[i] * gains[i];
	}

	sum = Math.sqrt(sum);
	
	for (var i = 0; i < nbspeakers; ++i) {
		gains[i] /= sum;
	}
	
	return gains;
}
computeStaticGains.local = 1;

function computeMovingGains() {
	//*
	var x1, x2, y1, y2;
	var gains = new Array(nbspeakers);
	for (var i = 0; i < nbspeakers; ++i) gains[i] = 0;
	var [a, d] = newpos;
	
	if (d >= 1) {
		gains = computeStaticGains(a, d);
		x1 = x2 = Math.cos(a * 2 * Math.PI);
		y1 = y2 = Math.sin(a * 2 * Math.PI);
	} else {
		var [x, y] = newcarpos;
		var [px, py] = lastcarpos;
		if (computeDistance(x, y, px, py) < epsilon) {
			return null;
		}
		
		[x1, y1, x2, y2] = computeIntersectionPoints(x, y, px, py);
		
		var seg = computeDistance(x1, y1, x2, y2);
		var dist1 = computeDistance(x, y, x1, y1);
		var panning = dist1 / seg;
		var angle = panning * 1.570796;
		
		var g1 = Math.cos(angle);
		var g2 = Math.sin(angle);
		
		[[x1, y1, g1], [x2, y2, g2]].forEach(function(data) {
			var [x, y, g] = data;
			var intersecta = Math.atan2(y, x);
			if (intersecta < 0) intersecta += (2 * Math.PI);
			intersecta /= (2 * Math.PI);
			
			var intersectgains = computeStaticGains(intersecta, 1);
			for (var i = 0; i < nbspeakers; ++i) {
				gains[i] += intersectgains[i] * g;
			}
		});
		
		// normalize gains (constant power)
		var sum = 0;
		for (var i = 0; i < nbspeakers; ++i) {
			sum += gains[i] * gains[i];
		}
		sum = Math.sqrt(sum);	
		for (var i = 0; i < nbspeakers; ++i) {
			gains[i] /= sum;
		}
	}
	
	outlet(2, x1, y1, x2, y2);
	return gains;
}
computeMovingGains.local = 1;

// public functions ////////////////////////////////////////

function algo() {
	[mode] = arrayfromargs(arguments);
}

// arg : nb of speakers ------------------------------------

function speakers() {
	[nbspeakers] = arrayfromargs(arguments);
	//nbspeakers = args[0];
	interval = 1 / nbspeakers;
	gainsMedian = new Median(nbspeakers, 5);
	gainsMvavrg = new Mvavrg(nbspeakers, 5);
}

// args : [angle, distance] --------------------------------

function list() {
	var [a, d] = arrayfromargs(arguments);
	
	newpos = [a, d];
	newcarpos = poltocar(a * 2 * Math.PI, d);
	
	var actualMode = mode;
	
	if (actualMode === 'hybrid') {
		// compute speed
		var speed = computeSpeed();
		[speed] = speedMvavrg.process(speedMedian.process([speed]));
		speed = Math.min(maxspeed, Math.max(minspeed, speed));
		speed -= minspeed;
		speed /= (maxspeed - minspeed);
		speed *= (Math.PI * 0.5);
	
		// interpolation gains between static and moving
		var staticGain = Math.cos(speed);
		var movingGain = Math.sin(speed);
	}
	
	if (actualMode === 'moving' || actualMode === 'hybrid') {
		var maybeMovingGains = computeMovingGains();
		if (maybeMovingGains) {
			movingGains = gainsMvavrg.process(gainsMedian.process(maybeMovingGains));
		} else {
			// if movingGains cannot be computed, we temporarily swith to static
			actualMode = 'static';
		}
	}	

	if (actualMode === 'static' || actualMode === 'hybrid') {
		staticGains = computeStaticGains(a, d);
	}

	var sum = 0;
	var gains = new Array(nbspeakers);
	for (var i = 0; i < nbspeakers; ++i) {
		switch (actualMode) {
			case 'static':
				gains[i] = staticGains[i];
				break;
			case 'moving':
				gains[i] = movingGains[i];
				break;
			case 'hybrid':
				gains[i] = staticGain * staticGains[i] + movingGain * movingGains[i];
				break;
			default:
				break;
		}
		sum += gains[i] * gains[i];
	}
	sum = Math.sqrt(sum)
	for (var i = 0; i < nbspeakers; ++i) {
		gains[i] /= sum;
	}
		
	lastpos = newpos;
	lastcarpos = newcarpos;
	
	outlet(0, gains);
}