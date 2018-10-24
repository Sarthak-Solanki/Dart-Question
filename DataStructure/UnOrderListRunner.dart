import 'UnOrderList.dart';
import 'dart:io';
main() {
  UnOrderList un= new UnOrderList();
  String s ='';
  File f= new File('/home/administrator/file.text');
  String st = f.readAsStringSync();
  List l = new List();
  for(int i = 0;i<st.length;i++) {
    l = st.split(' ');
  }
  l.forEach((f)=>un.add(f));
  un.display();
  print('Enter a word you want to find');
  var word = stdin.readLineSync();
  bool b = un.find(word);
  un.display();

  if(b){
    st = st+" "+word;
  f.writeAsStringSync(st);
}
}