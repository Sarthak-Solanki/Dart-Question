import 'dart:io';
main(){
  int m = 3;
  int n = 3;
  
  var x = new List.generate(m, (_)=> new List(n));
  for (int i = 0; i < m; i++) {
    for (int j = 0; j < n; j++) {
      print('print num');
String st = stdin.readLineSync();
int z = int.parse(st);
      x[i][j] = z ;
    }
  }
  for (int i1 = 0; i1 < m; i1++) {
    for (int i = 0; i < n; i++) {
     stdout.write(x[i1][i]);
    }
    print('');
  }
}