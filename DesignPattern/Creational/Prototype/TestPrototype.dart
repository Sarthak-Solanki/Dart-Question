import 'Protype.dart';
main(){
  Protype pr = new Protype();
  pr.addData();
  List book1 = pr.clone();
  print(pr.getList());
  book1.add("5. Raw AI");
  print(book1);
}