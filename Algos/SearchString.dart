import 'dart:async';
import 'dart:io';
import 'package:package_config/packages_file.dart';
import 'dart:convert';

main() async{
  print('Enter a word you want to search');
  String s = stdin.readLineSync();
  List l = new List();
  File f = new File('/home/administrator/file.text');
  String st = f.readAsStringSync();
  for(int i = 0;i<st.length;i++){
    l = st.split(' ');
  }
  //print(l);
  binarySString(l, s);
}
binarySString(List st , String s){
  int low = 0;
  int high = st.length-1;
  int mid = 0;
  while(low<=high) {
    mid = ((low+high)/2).round()-1;
   // print(st[mid]);
    if(st[mid].compareTo(s)<0)
      low = mid+1;
    else if(st[mid].compareTo(s)>0) {
      high = mid-1;
    }
    else {
      print(mid);
      print(st[mid]);
      break;}
  }
}

//findWord(String s) {}
