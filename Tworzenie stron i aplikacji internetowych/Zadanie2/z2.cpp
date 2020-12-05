#include <iostream>

using namespace std;

int main() {
  int wartosc;
  cout << "Prosze wprowadzic wartosc: ";
  cin >> wartosc;
  cout << endl;
  if ((wartosc > 100) && (wartosc % 3 == 0))
    cout << "Wartosc " << wartosc << " spelnia warunki";
  else cout << "Wartosc " << wartosc << " NIE spelnia warunki";
  cout << endl;
  system("pause");
  return 0;
}
