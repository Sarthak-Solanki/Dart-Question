import 'dart:io';

main() {
  print('Enter a number');
  String st = stdin.readLineSync();
  double i = double.parse(st);
  factorization(i);
}

void factorization(double n) {
  int count = 0;
  var ar = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29];
  while (n % 2 == 0) {
    count++;
    //print(2);
    n = n / 2;
  }
  print('2^$count');

  for (int i = 0; i < ar.length && ar[i] <= n; i++) {
    while (n % ar[i] == 0) {
      print(ar[i]);
      n =n/ar[i];
    }
  }
  if (n > 2)
    print(n);
}