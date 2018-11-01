import 'SocketAdapter.dart';
import 'AdapterImplement.dart';
import 'Volt.dart';
class Test{
  Volt getVolt(SocktetAdapter sockAdapter, int i) {
    switch (i){
      case 3: return sockAdapter.get3Volt();
      case 12: return sockAdapter.get12Volt();
      case 120: return sockAdapter.get120Volt();
      default: return sockAdapter.get120Volt();
    }
}
}
main() {
  Test t = new Test();
  SocktetAdapter sa = new AdapterImplement();
  Volt v3 = t.getVolt(sa, 3);
  Volt v12  =t.getVolt(sa, 12);
  Volt v120  =t.getVolt(sa, 120);
  print("v3 volt is ${v3.getVolt()}");
  print("v12 volt is ${v12.getVolt()}");
  print("v120 volt is ${v120.getVolt()}");
}
