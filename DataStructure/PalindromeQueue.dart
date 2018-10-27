import 'dart:io';
import 'Queue.dart';
main(){
  Queue q = new Queue();
  print('Enter a word');
  String st = stdin.readLineSync();
  List l = new List();
  l = st.split('');
 String st2 = '';
  for(int i = 0;i<st.length;i++){
   q.enque(st[i]);
 }
 for(int i = 0;i<st.length;i++){
   st2 = q.deque()+st2;
 }
 if(st==st2){
    print('palindome');
 }
 else
   print('Not palindrome');
}