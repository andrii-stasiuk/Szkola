function compute(znak) {
	var liczba_a = parseFloat(document.getElementById('liczba_a').value);
	var liczba_b = parseFloat(document.getElementById('liczba_b').value);
	var wynik = 0;
	if(isNaN(liczba_a) || isNaN(liczba_b))
		return;
	switch (znak) {
		case '+':
			wynik = liczba_a + liczba_b;
			break;
		case '-':
			wynik = liczba_a - liczba_b;
			break;
		case '*':
			wynik = liczba_a * liczba_b;
			break;
		case '/':
			wynik = liczba_a / liczba_b;
			break;
		case '^':
			wynik = liczba_a ** liczba_b;
			break;
	}
	document.getElementsByClassName('res')[0].innerHTML = "Wynik: " + wynik.toString();
}