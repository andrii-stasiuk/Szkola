function oblicz() {
	// alternative: document.paliwo.rodzaj.value, document.paliwo.ile.value
	var rodzaj = document.getElementById('rodzaj').value; 
	var ile = document.getElementById('ile').value;
	var wartosc;
	if (rodzaj == 1) {
		wartosc = 4 * ile;
	} else if (rodzaj == 2) {
		wartosc = 3.5 * ile;
	} else {
		wartosc = 0;
	}
	document.getElementById('result').innerHTML = "koszt paliwa: " + wartosc.toString() + " zł";
	// or alternative: document.getElementsByClassName('result')[0].innerHTML = "koszt paliwa: "+wartosc.toString()+" zl";
}