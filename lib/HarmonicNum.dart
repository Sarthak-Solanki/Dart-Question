import 'dart:io';
main(){
  print('inter a num');
  var n = stdin.readLineSync();
  int num = int.parse( n);
  double j = 0.0;
  for(double i=1.0;i<num;i++){
    j = j+(1/i);
  }
  print(j);
}