import 'dart:math';
import 'dart:io';
main(){
  print('Enter your range');
  var st  = stdin.readLineSync();
  int i = int.parse(st);
  coupanGenerate(i);
}
coupanGenerate(int i){
  int n = i;
  List l = new List();
  Random r = new Random();
  for(int z = 0;z<n;){
  int j = r.nextInt(n);
  if(!(l.contains(j))){
  l.add(j);
  print(j);
  i++;
  }
}
}