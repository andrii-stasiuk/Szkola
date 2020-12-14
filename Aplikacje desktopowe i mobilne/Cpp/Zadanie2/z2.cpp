#include <iostream>

using namespace std;

int main() {
  unsigned int rozmir = 0;
  cout << "Prosze wprowadzic liczbe elementow: ";
  cin >> rozmir;
  int * masyv = new int[rozmir];
  cout << endl;
  for (int i = 0; i < rozmir; ++i) {
    cout << "Prosze wpisac " << i + 1 << " element: ";
    cin >> masyv[i];
  }

  int tmp;
  for (int i = 0; i < rozmir - 1; ++i) {
    for (int j = 0; j < rozmir - 1 - i; ++j) {
      if (masyv[j] > masyv[j + 1]) {
        tmp = masyv[j];
        masyv[j] = masyv[j + 1];
        masyv[j + 1] = tmp;
      }
    }
  }

  cout << endl << "Posortowane elementy: ";
  for (int i = 0; i < rozmir; ++i)
    cout << masyv[i] << " ";
  delete [] masyv;
  cout << endl;
  system("pause");
  return 0;
}
