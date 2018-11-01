import 'getBookState.dart';
import 'BookShop.dart';
class BookShopProxy extends BookShop implements getBookState{

  totalBookAvailable(){
    print("2000");
    return 2000;
  }
  bool bookAvailableToRead(){
    print("Yes it is");
    return true;
  }
}