var val = 0;
var inc = 0;
var voices = 1;
var spread = 0;

function bang() {
	val += inc;
	
	if (val >= 0) {
		val = val % 1;
	} else {
		val = 1 - Math.abs(val);
	}
	
	var out = [];
	for (var i = 0; i < voices; ++i) {
		var v = val + i * spread;
		out.push((v >= 0) ? (v % 1) : (1 - Math.abs(v)));
	}
	outlet(0, out);
}

function setValue(v) {
	var a = arrayfromargs(arguments);
	val = a[0] || 0;
}

function setIncrement() {
	var a = arrayfromargs(arguments);
	inc = a[0] || 0;
}

function setSpread() {
	var a = arrayfromargs(arguments);
	spread = a[0];
}

function setVoices() {
	var a = arrayfromargs(arguments);
	voices = Math.max(Math.round(a[0]), 1);
}