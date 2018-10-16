import 'dart:io';
main() {
  print('Enter 1st String');
  String s1 = stdin.readLineSync();
  print('Enter 2nd String');
  String s2 = stdin.readLineSync();
  isAnagram(s1, s2);
}
void isAnagram(String s1 ,String s2){

  List l = new List();
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
    print('Not a anagram');
}
