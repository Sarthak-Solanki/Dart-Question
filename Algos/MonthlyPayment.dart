import 'dart:io';

main() {
  print('Enter p');
  int p = int.parse(stdin.readLineSync());
  print('Enter y');
  int y = int.parse(stdin.readLineSync());
  print('Enter r');
  int r = int.parse(stdin.readLineSync());
  int n = 12 * y;
  var deno = 1 - (1 + r) ^ (-n);
  var payment = (p * r) / deno;
  print(payment);
}
