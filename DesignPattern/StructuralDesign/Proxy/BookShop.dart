import 'getBookState.dart';
class BookShop implements getBookState{
  _buy(){
    print("Book Purchased");
  }
  _sell(){
     print("Book Sold");
  }
  totalBookAvailable(){
    return 2000;
  }
  bool bookAvailableToRead(){
    return true;
  }
}