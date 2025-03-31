var cues = []; // {};
var lastpos = 0;
var nextpos = 0;
var nextindex = 0;


function read() {
	cues = [];
	var args = arrayfromargs(arguments);
	//post(args);
	var f = new File(args, "read", ".csv");
	var i = 0;
	while(f.isopen && f.position < f.eof ) {
		var line = f.readline();
		if (i == 0) { i++; continue; }
		var elements = line.split(',');
		var id = elements[0]; // Number(elements[0].slice(1));
		var description = elements[1];
		var position = Number(elements[2]) * 1000;
		// cues[index] = { description: desc, msdate: msdate };
		cues.push({
			id: id,
			description: description,
			position: position
 		});
    }
}

function position() {
	var pos = Number(arrayfromargs(arguments));
	if (pos <= lastpos) {
		// find next index to trig
		for (var i = 0; i < cues.length; ++i) {
			if (cues[i].position > pos) {
				nextindex = i;
				nextpos = cues[i].position;
				break;
			}
		}
	} else {
		if (lastpos < nextpos && pos >= nextpos) {
			outlet(0, cues[nextindex].id, cues[nextindex].description);
			if (nextindex < cues.length - 1) {
				nextindex++;
				nextpos = cues[nextindex].position;
			}
		}
	}
	lastpos = pos;
}