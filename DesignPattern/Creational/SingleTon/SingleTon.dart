import 'dart:async';
import 'package:threading/threading.dart';
class Singleton{

  static Singleton _s ;
  Singleton._internal();
  factory   Singleton()   {
    if(_s==null){

      _s = new Singleton._internal();
    }
    return _s;
  }
}
main(){
 var s1 = new Singleton();
  var s2 = new Singleton();
 print(s1.hashCode);
 print(s2.hashCode);
  Thread tv= new Thread(()async{
    run(){
      var s1 = new Singleton();
    }

  });

  Thread tv2= new Thread(()async{
    run(){
    var s2 = new Singleton();
  }
  });
  tv.start();
  Thread.sleep(30);
  tv2.start();


 if(tv==tv2){
   print("yay");
 }
 else
   print(tv.hashCode);
 print(tv2.hashCode);
}
