import 'dart:io';
import 'dart:math';

main() {
  print('enter a');
  String st = stdin.readLineSync();
  int a = int.parse(st);
  print('enter b');
  String st2 = stdin.readLineSync();
  int b = int.parse(st2);
  print('enter c');
  String st3 = stdin.readLineSync();
  int c = int.parse(st3);
  int delta = ((b * b) - (4 * a * c));
  print(delta);
  if(delta>0){
  var x1 = (-b + sqrt(delta)) / (2 * a);
  var x2 = (-b - sqrt(delta)) / (2 * a);
  print(x1);
  print(x2);}
}
