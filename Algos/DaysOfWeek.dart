import 'dart:io';
main(){
  print('Month');
  double m = double.parse(stdin.readLineSync());
  print('day');
  double d = double.parse(stdin.readLineSync());
  print('year');
  double y = double.parse(stdin.readLineSync());


  int year = (y - ((14 - m) / 12).toInt()).toInt();
  print(year);
  int x = (((year) + (year/4).toInt() - (year/100).toInt() + (year/400).toInt())).toInt();
  print(x);
  int month = (m + 12 * ((14 - m).toInt() / 12).toInt() - 2).toInt();
  print(month);
  int day = ((d + x + 31*month / 12).toInt() % 7).toInt() ;
  print(day);

}