import 'dart:io';
import 'Stack.dart';
main() {
  int cashInAtm = 100000;
  atmMachine(cashInAtm);
}

void atmMachine(int cash) {
  int cashinAtm = cash;
  print('Enter person in a que');
  int i = int.parse(stdin.readLineSync());
  for(int j = 0;j<i;j++){
    push('person$j');
  }
  int z = i;
  for(int j = 0;j<z;j++){
    if(cashinAtm>=0){
      print('Enter 0 if you want to withdraw and 1 if you want to deposit');
      int input = int.parse(stdin.readLineSync());
      if(input==0){
        print('Enter amount you you want to withdraw');
        int amtowith = int.parse(stdin.readLineSync());
        if(amtowith>cashinAtm){
          print('Sorry amount enter cant be dispatched');
          pop();
          i--;
          return;
        }else{
          cashinAtm = cashinAtm-amtowith;
          pop();  i--;
        }
      }
      if(input==1){
        print('Enter amount  you want to deposit');
        int amtodepo = int.parse(stdin.readLineSync());
        cashinAtm = cashinAtm+amtodepo;
        pop();
        i--;
        return;
      }
    }

  }

}
