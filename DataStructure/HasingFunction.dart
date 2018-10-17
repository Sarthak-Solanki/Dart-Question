import 'dart:io';
class HashingFunction{
  main(){
  File f= new File('/home/administrator/HashingFunction.text');
 String st = f.readAsStringSync();
 List l = new List();
 l = st.split(' ');
 print(l);
 int m = 10;
 int n = 10;
  var x = new List.generate(m, (_)=> new List(n));
for(int i = 0;i<=st.length;i++){
  int z = 0;
  z = l[i]%11;
  l
}
  }
}