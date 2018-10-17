import 'UnOrderList.dart';
import 'dart:io';
main() {
  String s ='';
  File f= new File('/home/administrator/file.text');
  String st = f.readAsStringSync();
  List l = new List();
  for(int i = 0;i<st.length;i++) {
    l = st.split(' ');
  }
  l.forEach((f)=>add(f));
  display();
  print('Enter a word you want to find');
  var word = stdin.readLineSync();
  bool b = find(word);
  display();

  if(b){
    st = st+" "+word;
  f.writeAsStringSync(st);
}
}