import 'dart:async';
import 'package:threading/threading.dart';
class Singleton{

  static Singleton _s ;
  Singleton._internal();
  factory Singleton() {
    if(_s==null){
    _s = new Singleton._internal();
    }
    return _s;
  }
}
main(){
  var s1 = new Singleton();
  var s2 = new Singleton();
  if(s1==s2){
    print(s1.toString()+ " "+ s2.toString());
  }
}
