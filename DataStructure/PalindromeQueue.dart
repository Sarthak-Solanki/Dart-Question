import 'dart:io';
import 'Queue.dart';
main(){
  print('Enter a word');
  String st = stdin.readLineSync();
  List l = new List();
  l = st.split('');
 String st2 = '';
  for(int i = 0;i<st.length;i++){
   enque(st[i]);
 }
 for(int i = 0;i<st.length;i++){
   st2 = deque()+st2;
 }
 if(st==st2){
    print('palindome');
 }
 else
   print('Not palindrome');
}