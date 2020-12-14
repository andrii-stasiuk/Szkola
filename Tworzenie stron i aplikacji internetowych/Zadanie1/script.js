document.addEventListener('click', musicPlay);
let playing = false;

function musicPlay() {
	if (playing)
		document.getElementById('music').pause();
	else
		document.getElementById('music').play();
	playing = !playing;
}