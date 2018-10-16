import 'dart:io';
main(){
  print('Enter a String');
  String s = stdin.readLineSync();
  isPalindrome(s);
}
isPalindrome(var s){
  s = s.toString();
  String st = s.split('').reversed.join();
  if(s==st){
    print('palindome');

  }
  else
    print('not palindrome');
}