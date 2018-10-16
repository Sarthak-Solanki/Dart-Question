import 'dart:io';

main(){
  String st ='hello <<username>>, how are you?';
  print(st);
  print('Enter your name');
  var name = stdin.readLineSync();
  String st2 = st.replaceAll('<<username>>', name);
print(st2);
}