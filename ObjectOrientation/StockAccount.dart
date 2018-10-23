import 'dart:io';
import 'CompanyShare.dart';
class StockAccount{
  CompanyShare cs = new CompanyShare();
void buyOrSell(){
  print("Enter you want to buy or sell the stock");
  String s = stdin.readLineSync();
  if(s=="buy"){
    if(cs.numOfShare!=0){
    print("Enter Amount");
    int amount = int.parse(stdin.readLineSync());
    print("Enter Symbol");
    String symbol = stdin.readLineSync();
    cs.numOfShare--;
  }
  }
  else if(s=="sell"){
    print("Enter Amount");
    int amount = int.parse(stdin.readLineSync());
    print("Enter Symbol");
    String symbol = stdin.readLineSync();
    sell(amount, symbol);
    cs.numOfShare++;
  }

}
void buy(int amount,String symbol){
  int a  =(amount/cs.price).toInt();
if(cs.numOfShare>a){
  cs.numOfShare = cs.numOfShare-a;
}
}
void sell(int amount,String symbol){

}
void save(){}
void printReport(){

}
}
main(){
  StockAccount s = new StockAccount();
}