import 'dart:io';
import 'package:string_scanner/string_scanner.dart';
import 'package:boolean_selector/boolean_selector.dart';

main() {
  print('Enter a year');
  var y = stdin.readLineSync();
  var bz = bool(y);
  if(bz==true){convert(y);}
  else
    print('valid input needed');
}
bool(String st){
  try{
    double year = double.parse(st);
    return true;
  }catch (e) {
  }
}
convert(String st){
  double year = double.parse(st);
  if( (year%400==0 || year%100!=0) &&(year%4==0)){
    print('Leap year');
  }
  else
    print('not a leap year');

}