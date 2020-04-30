function compute(znak) {
	var liczba_a = parseFloat(document.getElementById('liczba_a').value);
	var liczba_b = parseFloat(document.getElementById('liczba_b').value);
	var wynik;
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
		default:
			wynik = 0;
	}
	document.getElementsByClassName('res')[0].innerHTML = "Wynik: " + wynik.toString();
}