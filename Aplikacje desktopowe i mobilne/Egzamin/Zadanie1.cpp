#include <iostream>
#include <cmath>

using namespace std;

int main(int argc, char* argv[]) {
  unsigned int rozmir = 0;
  cout << "Prosze wprowadzic liczbe elementow: ";
  cin >> rozmir;
  int * masyv = new int[rozmir];
  cout << endl;
  for (int i = 0; i < rozmir; ++i) {
    cout << "Prosze wpisac " << i + 1 << " element: ";
    cin >> masyv[i];
  }

  int minus = 0, plus = 0, zero = 0;
  for (int i = 0; i < rozmir; ++i) {
    if (masyv[i] == 0)
      zero++;
    else if (masyv[i] > 0)
      plus++;
    else
      minus++;
  }

  float p_minus = round(float(minus)/rozmir*100);
  float p_plus = round(float(plus)/rozmir*100);
  float p_zero = round(float(zero)/rozmir*100);
  cout << endl << "Procentowy udzial liczb ujemnych " << p_minus << "%, dodatnich " << p_plus << "% i zera " << p_zero << "%";
  delete [] masyv;
  cout << endl;
  system("pause");
  return 0;
}
