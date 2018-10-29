import 'dart:io';
import 'dart:convert';
class JsonInventory {
  int total;
  String name;
  int weight;
  int price;
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
       name = stdin.readLineSync();
        map["Name"] =  name;
        print("Enter  weight");
         weight = int.parse(stdin.readLineSync());
        map["weight"] = weight;
        print("Enter  price");
         price = int.parse(stdin.readLineSync());
        map["price" ] = price;
        total =  price*weight;
        String st = map.toString();
        putInJson(map);
        jsson.add(st);
        output.add(st+" Total is :"+total.toString());
      }
    }
    return jsson;
  }
  Map toJson() {
    Map map = new Map();
    map["Name"] = name;
    map["Weight"] = weight;
    map["price"] = price;
    //map["apointmentNo"] = _apointmentNo;
    return map;
  }
  void putInJson(Map l) {
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
