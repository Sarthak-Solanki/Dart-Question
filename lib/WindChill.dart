import 'dart:io';
import 'dart:math';
main(){
  print('Enter temprature less than 50');
  int temp = int.parse(stdin.readLineSync());
  print('Enter speed between 3 and 120');
  int speed = int.parse(stdin.readLineSync());
  if (temp > 50 || speed < 3 || speed > 120) {
    print("invalid input");
  }
  double w= 35.74+ (0.6215 * temp) + (0.4275 * temp - 35.75) * pow(speed, 0.16);
  print(w);
}
