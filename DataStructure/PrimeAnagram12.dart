import 'dart:io';
import '/home/administrator/AndroidStudioProjects/flutter_app_algo/Algos/Anagram2.dart';
import 'Stack.dart';
class PrimeAnagram12 {
  int count = 0;
  Anagram2 a = new Anagram2();
  List l = new List();
  List l2 = new List();
  List primeNum(){
    for (int i = 2; i <= 1000; i++) {
      bool b = true;
      for (int j = 2; j <= i / 2; j++) {
        if (i % j == 0) {
          b = false;
          break;
        }
      }
      if (b) {
        l.add(i);
      }
    }
    return l;
  }
  List Anagram(){
    bool b = false;
    PrimeAnagram12 pa= new PrimeAnagram12();
    List l = primeNum();
    // print(l);
    for(int i = 0;i<l.length-1;i++){
      for(int j = i+1;j<l.length;j++){
        if(l[i]>9){
          b = a.isAnagram(l[i], l[j]);
        }
        if(b){
          if(!l2.contains(l[i])){
            l2.add(l[i]);
            count++;
          }
        }
      }
    }
    //print(l2);
    return l2;
  }
  reverseStack(List reverse){
    //print(reverse);
    for(int i = 0; i<reverse.length;i++){
      int n = l[i];
      if(l[i]>10){
        while(n>0){
          int rem = n%10;
          stdout.write(rem);
          push(rem);
          n=(n~/10);
        }
        while(size>0){
          stdout.write(pop());
        }
        print('');
      }
    }
  }
}

main(){
  PrimeAnagram12 pa = new PrimeAnagram12();
  List reverse =   pa.Anagram();

  pa.reverseStack(reverse);
}