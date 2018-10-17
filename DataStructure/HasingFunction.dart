import 'dart:io';
class HashingFunction{
  main(){
  File f= new File('/home/administrator/HashingFunction.text');
 String st = f.readAsStringSync();
 List l = new List();
 l = st.split(' ');
 print(l);
}
}