import 'Subject.dart';
import 'Observer.dart';
class StockGrabber implements Subject{
  List<Observer> l;
  double _ibmPrice;
  double _applePrice;
  double _googlePrice;
  StockGrabber(){
    l = new List<Observer>();
  }

   register(Observer newObserver){
    l.add(newObserver);
  }
  unRegister(Observer deleteObserver){
    int index = l.indexOf(deleteObserver);
    print("Observer ${index++} deleted");
    l.remove(deleteObserver);
  }

  updateObserver(){
    for(Observer o in l){
      o.update(_ibmPrice, _applePrice, _googlePrice);
    }
  }
  setIbmPrice(double newIbmPrice){
    this._ibmPrice = newIbmPrice;
    updateObserver();
  }

  setApplePrice(double newApplePrice){
    this._applePrice = newApplePrice;
    updateObserver();
  }
  setGooglePrice(double newGooglePrice){
    this._googlePrice = newGooglePrice;
    updateObserver();
  }
}