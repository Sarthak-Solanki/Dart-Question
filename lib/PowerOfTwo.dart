import 'dart:io';
import 'dart:math';
main(){
  double j = 0.0;
  print('Enter a number');
  var z = stdin.readLineSync();

  int n = int.parse(z);
  if(n<31){
  for(int i=0;i<n;i++){
    j = j+pow(i, 2);
  }
  print(j);
  }
  else
    print('enter num less than 31');

}