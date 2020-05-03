function gen() {
	var first = parseFloat(document.getElementById('pierwszy').value);
	var second = parseFloat(document.getElementById('roznica').value);
	var third = parseFloat(document.getElementById('liczba').value);
	if(isNaN(first) || isNaN(second) || isNaN(third))
		return;
	var res = first.toString();
	for (i = 1; i < third; i++) {
		first += second;
		res += ', ' + first.toString();
	}
	document.getElementsByClassName('res')[0].innerHTML = 'Ciąg arytmetyczny zawiera wyrazy: ' + res;
}