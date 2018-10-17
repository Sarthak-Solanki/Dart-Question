import 'Node.dart';
Node head;
int size=0;
void enque(data){
  size++;
  Node node = new Node(data);
  if (head == null) {
    head = node;
  } else {
    Node n = head;
    while (n.next != null) {
      n = n.next;
    }
    print(n.next.data);
    n.next = null;
  }
}
String deque(){
  if(isEmpty()){
    return null;
  }
  else
    {
  Node n = head;
  if(head.next!=null){
    String datas = head.data;
    head = head.next;

    size--;
    return datas;
  }
  else{
  return head.data;}
}}
bool isEmpty(){
  if(size==0){
    return true;
  }
  return false;
}
int isSize(){
  return size;
}