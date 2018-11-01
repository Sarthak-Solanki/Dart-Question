import 'Observer.dart';
abstract class Subject{
register(Observer a);
unRegister(Observer a);
updateObserver();
}