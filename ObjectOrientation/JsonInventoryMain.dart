import 'JsonInventory.dart';

main() {
  JsonInventory js = new JsonInventory();
  List item = js.item();
  List n = new List();
  Map<String, dynamic> m;
  JsonInventory ji = new JsonInventory();
  List z = ji.getInput();
  ji.putInJson(z);
  List l = ji.show();

  for (int i = 0; i < l.length; i++) {
    m = l[i];
    print(m);
    var m1;
    var m2;
    int count = 0;
    m.forEach((k, v) {
      if (k == 'weight') {
        m1 = v;
      }
      if (k == 'price') {
        m2 = v;
        print("Price is");
        print(m1 * m2);
      }
    count++;
    });
  }
}