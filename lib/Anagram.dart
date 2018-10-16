import 'dart:io';
main(){
  /*print('Enter first String');
  String st = stdin.readLineSync();
  print('Enter Second String');
  String st2 = stdin.readLineSync();*/
/*bool b = check(st,st2);
if(b){
  print('anagram');

}
else
  print('not a anagram');*/
String st3 = 'Sarthak';
List l = new List(26);
int i = 0;
print(l[st3.ch]);
/*for(int i=0;i<st3.length;i++){
print(l[st3.codeUnitAt(i)]);
}*/
}
/*
bool check(String st,String st2){
  bool b = false;
  List<int> l = new List<int>(26);
  List<int> l2 = new List<int>(26);
st = st.toLowerCase();
st2 = st2.toLowerCase();
if(st.length!=st2.length){
  print('Not a Anagram');
}
else{
  for(int i = 0;i<st.length;i++){
    l[st.codeUnitAt(i)-97]++;
  }
  for (int i = 0; i < st2.length; i++) {
    l2[st2.codeUnitAt(i) - 97]++;
  }
  for (int i = 0; i < st.length; i++) {
    if (l[i] == l2[i]) {
      b = true;
    }
  }
  return b;
}
}*/
