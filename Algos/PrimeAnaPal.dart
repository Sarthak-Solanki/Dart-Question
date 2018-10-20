import 'dart:io';
import 'Anagram2.dart' ;
import 'Palindrome.dart' as p;
main(){
  Anagram2 a2 = new Anagram2();
  print('Enter number');
int i = int.parse(stdin.readLineSync());
int prime = isPrime(i);

if(prime>10){
  a2.isAnagram(i, i);
  p.isPalindrome(i);
}
}
int isPrime(int i){
  bool b = true;
  for(int i2 = 2;i2<=i/2;i2++){
    if(i%i2==0){
      b = false;
      break;
    }
  }
  if(b){
    print('isPrime');
    return i;
  }
  else
    {
      print('not prime');
    }
  return -1;
}