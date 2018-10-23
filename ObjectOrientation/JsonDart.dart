import 'dart:io';
class JsonDart{
List listOfItem(){
  List l = new List();
  l.add("Rice");
  l.add("Wheat");
  l.add("Pulse");
return l;
}
void readFile(){
  File f = new File('/home/administrator/JsonExample.json');
}
}
