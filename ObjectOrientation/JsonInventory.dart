import 'dart:io';
import 'dart:convert';

class JsonInventory {
  List jsson = new List();
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
        map["\"" + "Name" + "\""] = "\"" + s + "\"";
        print("Enter  weight");
        int weight = int.parse(stdin.readLineSync());
        map["\"" + "weight" + "\""] = weight;
        print("Enter  price");
        int price = int.parse(stdin.readLineSync());
        map["\"" + "price" + "\""] = price;
        String st = map.toString();
        jsson.add(st);
      }
    }
    return jsson;
  }
  void putInJson(List l) {
    File f = new File('/home/administrator/JsonExample.json');
    f.writeAsStringSync(l.toString());
  }
  List show() {
    File jsonFile = new File('/home/administrator/JsonExample.json');
    List fileContent = json.decode(jsonFile.readAsStringSync());
    //print(fileContent);
    return fileContent;
  }
}
