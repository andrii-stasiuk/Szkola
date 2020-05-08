document.addEventListener('click', musicPlay);
let playing = false;

// Internet Explorer 6-11
var isIE = /*@cc_on!@*/ false || !!document.documentMode;
// Edge 20+
var isEdge = !isIE && !!window.StyleMedia;

if (isIE || isEdge)
	playing = true;

function musicPlay() {
	if (playing)
		document.getElementById('music').pause();
	else
		document.getElementById('music').play();
	playing = !playing;
}