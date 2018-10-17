import 'Node.dart';

Node head;
int size = 0;

void add(String data) {
  Node node = new Node(data);
  if (head == null) {
    head = node;
    size++;
    return;
  }
  if (head.data.compareTo(data) > 0) {
    node.next = head;
    head = node;
    size++;
    return;
  }
  Node temp = head, prev = null;
  while (temp != null) {
    if (temp.data.compareTo(data) > 0) {
      prev.next = node;
      node.next = temp;
      size++;
      return;
    }
    prev = temp;
    temp = temp.next;
  }
  prev.next = node;
  size++;
  return;
}

/*void sort(){
  String j = head.data;
  String j2 = head.next.data;
  for(var i = 0;i<size;i++){
    for(var k = i;k<size-1;k++){
     while(head.data.compareTo(head.next.data)>0) {
        String temp = head.data;
        head.data = head.next.data;
        head.next.data = temp;
      }
    }
  }
}*/
void display() {
  Node n = head;
  while (n != null) {
    print(n.data);
    n = n.next;
  }
}
