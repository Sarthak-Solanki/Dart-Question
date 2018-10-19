import 'dart:io';
class PrimeNo2DArray {
  var x = new List.generate(10, (_) => new List(120));
  int i = 0;
  int z = 100;
  int count2 = 0;
  int count1 = 0;
  int countz = 0;
  List l = new List();

  primeNum() {
    if (countz == 0) {
      int count = 0;
      for (int i = 2; i <= 1000; i++) {
        bool b = true;
        for (int j = 2; j <= i / 2; j++) {
          if (i % j == 0) {
            b = false;
            break;
          }
        }
        if (b) {
          l.add(i);
          count++;
        }
      }
      countz++;
    }
    while (l[i] <= z) {
      x[count1][count2] = l[i];
      count2++;
      i++;
    }
    if (z <= 901) {
      z = z + 99;
      count1++;
      count2 = 0;
      primeNum();
    }
  }

  display() {
    for (int i = 0; i <10; i++) {
      for (int j = 0; j < 100; j++) {
        if (x[i][j] != null) {
          stdout.write(' ');
          stdout.write(x[i][j]);
        }
      }
      print('');
    }
  }
}
main(){
  PrimeNo2DArray p = new PrimeNo2DArray();
  p.primeNum();
  p.display();
}