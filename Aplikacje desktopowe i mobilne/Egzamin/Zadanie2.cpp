#include <iostream>
#include <cmath>

using namespace std;

float trik_p(float a=0, float b=0, float c=0) {
	return a+b+c;
}

float priam_p(float a=0, float b=0) {
	return a*2+b*2;
}

float kvad_p(float a=0) {
	return a*4;
}

float trik_s(float a=0, float b=0, float c=0) {
	float p = trik_p(a, b, c) / 2;
    return sqrt(p*(p - a)*(p - b)*(p - c));
}

float priam_s(float a=0, float b=0) {
	return a*b;
}

float kvad_s(float a=0) {
	return a*a;
}

int main(int argc, char* argv[]) {
  char figura;
  cout << "Prosze wybrac figure (t - trojkat, k - kwadrat, p - prostokat): ";
  cin >> figura;
  cout << endl;

  float a=0, b=0, c=0;
  if (figura == 'p') {
  	cout << "Prosze wprowadzic wymiary dwoch bokow prostokata: ";
    cin >> a >> b;
    cout << endl << "Obwod prostokata " << priam_p(a,b);
    cout << endl << "Powierzchnia prostokata " << priam_s(a,b);
  }
  else if (figura == 'k') {
  	cout << "Prosze wprowadzic dlugosc boku kwadratu: ";
    cin >> a;
    cout << endl << "Obwod kwadratu " << kvad_p(a);
    cout << endl << "Powierzchnia kwadratu " << kvad_s(a);
  }
  else {
  	cout << "Prosze wprowadzic wymiary trzech bokow trojkata: ";
    cin >> a >> b >> c;
    cout << endl << "Obwod trojkata " << trik_p(a,b,c);
    cout << endl << "Powierzchnia trojkata " << trik_s(a,b,c);
  }
  
  cout << endl;
  system("pause");
  return 0;
}
