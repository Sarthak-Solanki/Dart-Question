import 'dart:io';

main() {
  Anagram2 a = new Anagram2();
  print('Enter 1st String');
  String s1 = stdin.readLineSync();
  print('Enter 2nd String');
  String s2 = stdin.readLineSync();
  if (s1.length != s2.length) {
    print('Not Anagram');
  } else{
  bool b= a.isAnagram(s1, s2);
  if(b){
    print('Anagram');
  }
  else
  print('Not a anagram');
}
}
class Anagram2{
bool isAnagram(var s1, var s2) {

  bool b = true;
  s1 = s1.toString();
  //print(s1);
  s2 = s2.toString();
 // print(s2);
  if(s1.length!=s2.length){
    return false;
  }
  s2 = s2.toLowerCase();
  s1 = s1.toLowerCase();
  List l = new List();
  List l2 = new List();
  for (int i = 0; i < s1.length; i++) {
    l.add(s1[i]);
  }
  for (int i = 0; i < s2.length; i++) {
    l2.add(s2[i]);
  }
  l.sort();
  l2.sort();

  for (int i = 0; i < s2.length; i++) {
    if (l[i] != l2[i]) {
      b = false;
      break;
    }
  }
  if (b) {
    return b = true;
  }
  else
    return b = false;
}}
/*List l = new List();
  List l2 = new List();
  String st = '';
  String st2 = '';

  for (int i = 0; i < s1.length; i++) {
    st = s1[i];
    l.add(st);
    st = '';
  }
  for (int i = 0; i < s2.length; i++) {
    st2 = s2[i];
    l2.add(st2);
    st2 = '';
  }
  print(l);
  print(l2);
  for(int i = 0;i<s1.length;i++){
    for(int j = 0;j<s2.length;j++){
      if(l[i]==l2[j]&& l[i]!=null&&l2[j]!=null){
        l2.removeAt(j);
        //l.removeAt(i);
        //print(l);
       // print(l2);
        break;
      }
    }
  }
  if(l2.isEmpty){
    print('Anagram');
  }
  else
    print('Not a anagram');*/
