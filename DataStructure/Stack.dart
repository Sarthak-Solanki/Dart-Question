import 'Node.dart';

Node head;
int size = 0;

void push(data) {
  Node node = new Node(data);
  node.next = null;
  if (head == null) {
    head = node;
    size++;
    return;
  } else {
    Node n = head;
    while (n.next != null) {
      n = n.next;
    }
    n.next = node;
    size++;
    return;
  }
}

int pop() {
var lastdata;
  Node prev = null;
  if (isEmpty()) {
    print("Stack is Empty cant pop the data");
  }
  else{
    Node n = head;
    while(n.next!=null){
      prev = n;
      n = n.next;
    }
    if(prev==null){
      lastdata =  head.data;
      head = null;
      size--;
      return lastdata;
    }

    var data = n.data;
    prev.next=null;
    size--;
   // print(data);
    return data;
    /*Node current = n;
    prev.next= null;
    return current.data;*/
  }
  /*else {
    Node n = head;
    while (n.next != null) {
      prev = n;
      n = n.next;
    }
    if (prev == null) {
      head = null;
      size--;
    }
    if (!isEmpty()) {
      prev.next = null;
    }
    size--;
    return prev.data;
  }*/
}

int peek() {
  Node n = head;
  while (n.next != null) {
    n = n.next;
  }
  return n.data;
}

bool isEmpty() {
  return size == 0;
}

void display() {
  Node n = head;
  while (n != null) {
    print(n.data);
    n = n.next;
  }
}
