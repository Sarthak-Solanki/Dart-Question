import 'StockGrabber.dart';
import 'StockObserver.dart';
main(){
  StockGrabber sg = new StockGrabber();
  StockObserver so1  =new StockObserver(sg);
  sg.setApplePrice(122.77);
  sg.setGooglePrice(134.24);
  sg.setIbmPrice(127.33);
  StockObserver so2  =new StockObserver(sg);
  sg.setApplePrice(129.17);
  sg.setGooglePrice(137.14);
  sg.setIbmPrice(131.34);
  sg.unRegister(so1);
  StockObserver so3  =new StockObserver(sg);
  sg.setApplePrice(12.17);
  sg.setGooglePrice(37.14);
  sg.setIbmPrice(13.34);
}