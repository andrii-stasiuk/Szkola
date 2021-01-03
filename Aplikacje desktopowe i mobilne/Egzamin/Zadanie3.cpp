#include <stdio.h>
#include <conio.h>
#include <string.h>
#include <fstream>

using namespace std;

int golosni(char * sptr) {
  char golos[] = {
    'A',
    'a',
    'E',
    'e',
    'I',
    'i',
    'Y',
    'y',
    'U',
    'u',
    'O',
    'o'
  };
  int k = 0;
  for (int i = 0; i < strlen(sptr); i++)
    for (int j = 0; j < strlen(golos); j++) {
      if (sptr[i] == golos[j]) {
        k++;
        break;
      }
    }
  return k;
}

int main(int argc, char * argv[]) {
  char str1[256];
  char str2[256];
  printf("Prosze wprowadzic pierwszy ciag tekstu: \n");
  gets(str1);
  printf("Prosze wprowadzic drugi ciag tekstu: \n");
  gets(str2);

  int k1 = golosni(str1);
  int k2 = golosni(str2);
  ofstream fout("D:\\wynik.txt");

  if (k1 > k2)
    fout << "Wiecej samoglosek w pierwszym ciagu: " << k1;
  else if (k2 > k1)
    fout << "Wiecej samoglosek w drugim ciagu: " << k2;
  else fout << "Liczba samoglosek jest taka sama w obu ciagach: " << k1;
  fout.close();

  printf("Wynik porownania zostal zapisany do pliku");
  getch();
}
