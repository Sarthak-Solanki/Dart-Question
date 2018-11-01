import 'Socket.dart';
import 'SocketAdapter.dart';
import 'Volt.dart';
class AdapterImplement extends Socket implements SocktetAdapter{
  Volt get120Volt(){
    return getVolt();
  }

  Volt get12Volt(){
    Volt v = getVolt();
    return convertVolt(v,10);
  }

  Volt get3Volt(){
    Volt v = getVolt();
    return convertVolt(v,40);
  }
   Volt convertVolt(Volt v,int i){
    return new Volt(v.getVolt()~/i);
  }
}