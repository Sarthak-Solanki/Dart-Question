import 'PrimeAnagram12.dart';
import 'Queue.dart';
class PrimeAnaQue{
  Queue q  = new Queue();
List getAnaPrime(){
  PrimeAnagram12 pa = new PrimeAnagram12();
  List l = pa.Anagram();
  return l;
}
putInQueue(){
  List l = getAnaPrime();
  for(int i = 0;i<l.length;i++){
    q.enque(l[i]);
  }
}
getFromQue(){
  q.display();
}
}
main(){
  PrimeAnaQue pq = new PrimeAnaQue();
  pq.putInQueue();
  pq.getFromQue();

}