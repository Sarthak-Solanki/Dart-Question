import 'dart:io';
main(){
  print('Enter a number');
  int i= int.parse(stdin.readLineSync());
  toBinary(i);
}

List toBinary(int i ){
  List l3 = new List();
  String st = "";
  List l = new List();
  while(i!=0) {
    int z = i%2 ;
    l.add(z);
    i = (i/2).toInt();
  }
  List l2 = new List();
  for(i=l.length-1;i>=0;i--){
    l2.add(l[i]);
  }
  print('Normal number: ');
  print(l2);
  if(l2.length-1%4!=0) {

    int lenlef = l.length;

    while(lenlef>=4) {
      lenlef = l.length-4;
    }
    lenlef = 4-lenlef;
    if(l.length%4!= 0) {
      //int st2 = (st.length()-1)/4;
      //System.out.println();
      for (int j = 0; j <lenlef; j++) {
        l3.add(0);
      }
    }
    l3.addAll(l2);
    print('Number with 4 byte stream');
    print(l3);

  }
  return l3;
}