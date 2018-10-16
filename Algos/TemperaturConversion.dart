import 'dart:io';
main(){
  print('Enter temperature');
  double d = double.parse(stdin.readLineSync());
  print('your input infor: 0 for celsius 1 for fahrenheit');
  int i = int.parse(stdin.readLineSync());
  if(i==0){
    print((d * 9/5) + 32);
    stdout.write('Fahrenheit');
  }
  else if(i==1){
    print((d- 32) * 5/9 );
  stdout.write('Celsius');
  }
}
