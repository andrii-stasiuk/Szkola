function oblicz() {
	var dystans = parseFloat(document.getElementById('dystans').value);
	var spalanie = parseFloat(document.getElementById('spalanie').value);
	if (isNaN(dystans) || isNaN(spalanie)) {
		document.getElementsByClassName('res')[0].innerHTML = 'Please enter all values';
		return;
	}
	var result = dystans * spalanie / 100;
	document.getElementsByClassName('res')[0].innerHTML = 'Potrzebujesz: ' + result.toString() + ' litrów paliwa';
}