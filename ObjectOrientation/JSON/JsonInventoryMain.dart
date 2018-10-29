import '/home/administrator/AndroidStudioProjects/flutter_app_algo/ObjectOrientation/JSON/JsonInventory.dart';
import 'dart:convert';
main() {
  JsonInventory js = new JsonInventory();
  List item = js.item();
  List n = new List();
  Map<String, dynamic> m;
  JsonInventory ji = new JsonInventory();
   ji.getInput();
  //ji.putInJson(z);
  ji.show();
  /*for (int i = 0; i < l.length; i++) {
    m = jsonDecode(l[i]) as Map;
    var m1;
    var m2;
    //int count = 0;
    m.forEach((k, v) {
      if (k == 'weight') {
        m1 = v;
      }
      if (k == 'price') {
        m2 = v;
        print("Price is");
        print(m1 * m2);
      }
    });*/
  }
