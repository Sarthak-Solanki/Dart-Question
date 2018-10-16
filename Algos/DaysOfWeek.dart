import 'dart:io';
main(){
  print('Month');
  int m = int.parse(stdin.readLineSync());
  print('day');
  int d = int.parse(stdin.readLineSync());
  print('year');
  int y = int.parse(stdin.readLineSync());


  int year = ((y) - (14 - m) / 12).toInt()+1;
  print(year);
  int x = ((year) + (year/4) - (year/100) + (year/400)).toInt()+1;
  print(x);
  int month = (m + 12 * ((14 - m) / 12) - 2).toInt()+1;
  print(month);
  int day = ((d + x + 31*month / 12) % 7).toInt() ;
  print(day);
}