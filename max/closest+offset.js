var srcIn 	= {};
var srcOut 	= {};
var srcRad 	= 0;
var cx 		= 0;
var cy 		= 0;

// x y offsets --------------------//
function getOffset(src) {
	return {
		x: cx - src.x,
		y: cy - src.y
	};
}
getOffset.local = 1;

// closest ------------------------//
function findClosest() {
	var minSqDist = null;
	var closest = -1;
	
	Object.keys(srcOut).forEach(function(id) {
		if (closest === -1) {
			closest = id;
		} else if (srcOut[id].sqDist < srcOut[closest].sqDist) {
			closest = id;
		}
	});
	
	var { x, y } = closest !== -1 ? srcOut[closest] : { x:0, y:0 };
	return { id: closest, x:x, y:y };
};
findClosest.local = 1;

// main bang method ---------------//

// suppose we have received a list in right inlet
// and a few ones in left inlet.
// we want the closest index within maxdist

function bang() {
	srcOut = {};
	var sqRad = srcRad * srcRad;

	Object.keys(srcIn).forEach(function(id) {
		var s = srcIn[id];
		var { x, y } = getOffset(s);
		var sqDist = x * x + y * y;

		if (sqDist <= sqRad) {
			srcOut[id] = { x:x, y:y, sqDist:sqDist };
		}
	});

	var { id, x, y } = findClosest();
	outlet(0, Number(id), x, y);
}

function resetSources() {
	srcIn = {};
}

function setSourceRadius() {
	var a = arrayfromargs(arguments);
	if (a.length === 1)
	srcRad = a[0];
}

function setCursor() {
	var a = arrayfromargs(arguments);
	if (a.length > 1)
	cx = a[0];
	cy = a[1];
}

function addSource() {
	var a = arrayfromargs(arguments);
	var id = a[0];
	var x = a[1];
	var y = a[2];
	srcIn[id] = { x:x, y:y };
}
