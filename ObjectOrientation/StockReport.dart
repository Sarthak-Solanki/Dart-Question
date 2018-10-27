import 'dart:io';
import '/home/administrator/AndroidStudioProjects/flutter_app_algo/DataStructure/UnOrderList.dart';
import 'StockDetails.dart';
class StockReport{
  UnOrderList<StockDetails> list;

  int getNoOfStock(){
    print("Enter no of Stock");
    int num = int.parse(stdin.readLineSync());
    return num;
  }
  int getDetail(){
    //List  name  = new List();
    list = new UnOrderList<StockDetails>();
    int num = getNoOfStock();
    for(int i = 0;i<num;i++){
      print("Enter share name");
      String name = stdin.readLineSync();
      print("Enter num of share");
      int noOfShare = int.parse(stdin.readLineSync());
      print("Enter price");
      int price = int.parse(stdin.readLineSync());
      StockDetails sd = new StockDetails(name, noOfShare, price);
      list.add(sd);
    }
  }
  void printReport(){
    int TValue = 0;
    while(!list.isEmpty()){
      StockDetails sd = list.pop(0);
      TValue = TValue+sd.getValue();
      print(sd.getName()+"    "+sd.getNoOfShare().toString()+"   "+sd.getPrice().toString()+"   "+sd.getValue().toString());
    list.display();
    }
    print("Total value is"+TValue.toString());
  }
}
main(){
StockReport sr = new StockReport();
sr.getDetail();
sr.printReport();
}