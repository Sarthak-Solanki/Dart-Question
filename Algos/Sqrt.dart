import 'dart:io';
import 'dart:math';
main(){
sqrt();
}
sqrt(){
  print('Enter a +ve number');
  var i= double.parse(stdin.readLineSync());
  double t = i;
  double epsilon = 1e-15;
  while((t - i/t).abs()>epsilon*t)
  {
    t = (((i/t)+t)/2.0);
  }
  print(t);
}