import 'dart:io';

main() {
  print('Enter your range between 1 to 1000 answer will exclude 0 and 1');
  int i = int.parse(stdin.readLineSync());
  prime(i);
}

int prime(int i) {
  int count = 0;

  for (int i1 = 2; i1 < i; i1++) {
    bool b = true;
    for (int j = 2; j <= i1 / 2; j++) {
      if (i1 % j == 0) {
        b = false;
        break;
      }
    }
    if(b){
      print(i1);
      count++;
    }
  }
  print('Total prime number is $count');
}

