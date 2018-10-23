import 'dart:convert';
import 'dart:io';

File f;
List con;
List contents;
List l = new List();
void read() {
  f = new File('/home/administrator/JsonExample.json');
List  filecontent = json.decode(f.readAsStringSync());
}

getInput() {
  List l = new List();
  List item = new List();
  item.add("Rice");
  item.add("Wheat");
  item.add("Pulses");
  for (int i = 0; i < item.length; i++) {
    print("Enter " + item[i] + " yOU Want");
    int count = int.parse(stdin.readLineSync());
    for (int j = 0; j < count; j++) {
      print("Enter name");
      String s = stdin.readLineSync();
      write("Name", s);
      print("Enter  weight");
      int weight = int.parse(stdin.readLineSync());
      write("weight", weight);
      print("Enter  price");
      int price = int.parse(stdin.readLineSync());
      write("Price", price);
    }
  }
}

void write(String key, var value) {

  Map<String, dynamic> con = {key: value};

 /*  contents = json.decode(f.readAsStringSync());
   contents.addAll(con);*/
   l.add(con);
  //Map<String, dynamic> contents2 = new Map();
  //contents2.addAll(con);

  //List myList = new List();
  //myList.add(contents);
  //myList.add(contents2);

  f.writeAsStringSync(json.encode(l));
}

main() {
  read();
  getInput();
}
