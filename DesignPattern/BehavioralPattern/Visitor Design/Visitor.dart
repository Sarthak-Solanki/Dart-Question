import 'Alcohol.dart';
import 'Book.dart';
import 'Petrol.dart';
abstract class Visitor{
   double visit(Alcohol alcoholItem);
//since dart doesnt support **METHOD OVERLOADING** this questoin cant be done
}