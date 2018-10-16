import 'dart:io';
main(){
  print('Enter money');
  int n = int.parse(stdin.readLineSync());
returnNote(n);
}
returnNote(int n){
  List ar = new List();
  ar.addAll([1, 2, 5, 10, 50, 100, 500, 1000]);
if(n==0){
  return;
}
else{
  int j = 0;
  for (int i = 0; i < ar.length; i++) {
    if (ar[i] > n || n > 1000) {
      if (n > 1000) {
        j = 1000;
      }
      else {
        j = ar[i - 1];
      }
      int qui = (n / j).round();
      n = n % j;
      print('$j  note   $qui  times');
      returnNote(n);
      break;
    }
  }
}
}