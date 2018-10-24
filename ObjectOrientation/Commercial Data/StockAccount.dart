import 'CompanyShares.dart';
import 'dart:io';
import '/home/administrator/AndroidStudioProjects/flutter_app_algo/DataStructure/UnOrderList.dart';
class StockAccount{

  List<CompanyShares> list = new List();
  //List<CompanyShare> l;
  void buySell(){
    print("Enter 0 to buy or 1 to sell and 2 to print result");
    int input = int.parse(stdin.readLineSync());
    if(input==0){
      print('enter amount,symbol and price');
      int amount = int.parse(stdin.readLineSync());
      String symbol = stdin.readLineSync();
      int price = int.parse(stdin.readLineSync());
      buy(amount,symbol,price);
      buySell();
    }
    if(input==1){
      print('enter amount,symbol and price');
      int amount = int.parse(stdin.readLineSync());
      String symbol = stdin.readLineSync();
      int price = int.parse(stdin.readLineSync());
      sell(amount,symbol,price);
      buySell();
    }
    else {
      StockAccount sa = new StockAccount();
      printReport();
    }
  }
  void buy(int amount,String symbol,int price){
    var dateTime = new DateTime.now();
   // print(amount~/price);
    int numOfShare = amount~/price;
    CompanyShares co = new CompanyShares(symbol, numOfShare , price, dateTime.toString());
    //print(co.getSymbol());
   // print(co.getPrice());
   // print(dateTime);
    list.add(co);
  }
  void sell(int amount,String symbol,int price){
    int numOfShares = amount~/price;
    var dateTime = new DateTime.now();
    for(int i = 0;i<list.length;i++){
      if(list[i].getSymbol()==symbol){
        list[i].setNumOfShare(list[i].getNumOfShare() - numOfShares);
        list[i].setDateTime(dateTime);
        break;
      }
    }
  }
  double valueOf(){
    double total = 0.0;
    for(int i = 0;i<list.length;i++){
      total = total+list[i].getValue();
    }
    return total;
  }
  void printReport(){
    for(int i = 0;i<list.length;i++){
      print("Symbol:"+list[i].getSymbol()+
          " Price is: "+list[i].getPrice().toString()+" Value is: "+list[i].getValue().toString()
          +" Num oOf share is: "+list[i].getNumOfShare().toString()
          +" date time is: "+list[i].getDateTime().toString());
    }
  }
}
main(){
  StockAccount sa = new StockAccount();
  sa.buySell();
}