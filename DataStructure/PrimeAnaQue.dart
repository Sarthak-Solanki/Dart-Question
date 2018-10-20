import 'PrimeAnagram12.dart';
import 'Queue.dart';
class PrimeAnaQue{
List getAnaPrime(){
  PrimeAnagram12 pa = new PrimeAnagram12();
  List l = pa.Anagram();
  return l;
}
putInQueue(){
  List l = getAnaPrime();
  for(int i = 0;i<l.length;i++){
    enque(l[i]);
  }
}
getFromQue(){
  display();
}
}
main(){
  PrimeAnaQue pq = new PrimeAnaQue();
  pq.putInQueue();
  pq.getFromQue();

}