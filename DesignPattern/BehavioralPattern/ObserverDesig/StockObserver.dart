import 'Observer.dart';
import 'Subject.dart';
class StockObserver implements Observer{
  int  _observerId;
  double  _ibmPrice;
  double  _applePrice;
  double  _googlePrice;
  static int _observerIdTrack = 0;

  Subject _stockGrabber;
  StockObserver(Subject stockGrabber){
    this._stockGrabber = stockGrabber;
    this._observerId = ++_observerIdTrack;
    //print(_observerId);
    print("New observer created with id number ${this._observerId}");
    stockGrabber.register(this);
  }
  void update(double ibmPrice,double applePrice,double googlePrice){
    this._ibmPrice =ibmPrice;
    this._googlePrice = googlePrice;
    this._applePrice = applePrice;
    printPrice();
  }
  printPrice(){
    print(_observerId.toString()+"\n Ibm Price: "+_ibmPrice.toString()+"\n Google Price:  "+_googlePrice.toString()+"\n Apple price is: "+_applePrice.toString());
  }
}