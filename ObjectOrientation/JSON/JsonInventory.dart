import 'dart:io';
import 'dart:convert';

class JsonInventory {
  int total;

  List jsson = new List();
  List output = new List();
  Map<String, dynamic> map = new Map();
  List item(){
    List item = new List();
    item.add("Rice");
    item.add("Wheat");
    item.add("Pulses");
    return item;
  }

  List getInput() {
    JsonInventory js = new JsonInventory();
    List item =js.item();
    File f = new File('/home/administrator/JsonExample.json');
    for (int i = 0; i < item.length; i++) {
      print("how many " + item[i] + " You want");
      int count = int.parse(stdin.readLineSync());
      for (int j = 0; j < count; j++) {
        print("Enter name");
        String s = stdin.readLineSync();
        map["Name"] =  s;
        print("Enter  weight");
        int weight = int.parse(stdin.readLineSync());
        map["weight"] = weight;
        print("Enter  price");
        int price = int.parse(stdin.readLineSync());
        map["price" ] = price;
        total =  price*weight;
        String st = map.toString();
        jsson.add(st);
        output.add(st+" Total is :"+total.toString());
      }
    }
    return jsson;
  }
  void putInJson(List l) {
   String st =  json.encode(l);
    File f = new File('/home/administrator/JsonExample.json');
    f.writeAsStringSync(st);
  }
  void show() {
    for(int i = 0;i<output.length;i++){
      print(output[i]);
    }
  }
}
