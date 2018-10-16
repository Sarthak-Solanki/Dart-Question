import 'dart:io';

main() {


   List l = new List();
  print('Enter how amny num you want to enter');
  String st = stdin.readLineSync();
  int i = int.parse(st);
  for (int i1 = 0; i1 < i; i1++) {
    print('Enter number');
    String st = stdin.readLineSync();
    int j = int.parse(st);
    l.add(j);
    st = '';
  }
  for (int i = 0; i < l.length ; i++) {
    for (int j = i+1; j < l.length ; j++) {
      for (int k = j+1; k < l.length ; k++) {
        if (l[i] + l[j]+ l[k] == 0) {
         /* print(l[i]);
          print(l[j]);
          print(l[k]);*/
          print(l[i].toString()+ " " +l[j].toString() +" "+l[k].toString()+ 'is equals to ZERO');
        }
      }
    }
  }
}
