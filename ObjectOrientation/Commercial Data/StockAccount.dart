import 'CompanyShares.dart';
import 'dart:io';
import '/home/administrator/AndroidStudioProjects/flutter_app_algo/DataStructure/Stack.dart' as st;
import '/home/administrator/AndroidStudioProjects/flutter_app_algo/DataStructure/Queue.dart';
class StockAccount{
Queue q = new Queue();
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
    var dateTime = new DateTime.now().toString();
   // print(amount~/price);
    int numOfShare = amount~/price;
    CompanyShares co = new CompanyShares(symbol, numOfShare , price, dateTime.toString());
    //print(co.getSymbol());
   // print(co.getPrice());
   // print(dateTime);
    list.add(co);
    st.push("Purchased");
    q.enque(dateTime);
  }
  void sell(int amount,String symbol,int price){
    int numOfShares = amount~/price;
    var dateTime = new DateTime.now().toString();
    for(int i = 0;i<list.length;i++){
      if(list[i].getSymbol()==symbol){
        list[i].setNumOfShare(list[i].getNumOfShare() - numOfShares);
        list[i].setDateTime(dateTime);
        st.push("Sold");
        q.deque();
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
      print("Symbol: "+list[i].getSymbol()+
          "\n Price is: "+list[i].getPrice().toString()+" Value is: \n"+list[i].getValue().toString()
          +"\n Num oOf share is: "+list[i].getNumOfShare().toString()
          +"\n date time is: "+list[i].getDateTime().toString());
    }
    print("Symbols are: ");
    print(st.pop());
    print("time of purchase/sell is: ");
    print(q.deque());
  }
}
main(){
  StockAccount sa = new StockAccount();
  sa.buySell();
}