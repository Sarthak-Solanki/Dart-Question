import 'OrderedList.dart';
import 'dart:io';
main(){
  String s ='';
File f = new File('/home/administrator/file2.text');
  String st = f.readAsStringSync();
  List l = new List();
  for(int i = 0;i<st.length;i++) {
    l = st.split(' ');
  }
  l.forEach((f)=>add(f));
  display();
  print('Enter a num you want to find');
  String word = stdin.readLineSync();
  add(word);
    st = st+" "+word;
    f.writeAsStringSync(st);
  display();
}