import 'Node.dart';
import 'dart:io';
Node head;
int size=0;
addRear(data){
  Node node = new Node(data);
  if(head==null){
    head=node;
    size++;
  }
  else{
    Node n = head;
    while(n.next!=null){
      n = n.next;
    }
    n.next = node;
    size++;
  }
}
addFront(data){

  Node node= new Node(data);
  size++;
  if(head==null){
    head = node;
  }
  else{
    node.next= head;
    head=node;
  }
}
removeFront(){
  if(isEmpty()){
    print('Queue is empty');
  }
  else{
    size--;
  if(head.next!=null){
    head = head.next;
  }
  }
}
removeRear(){
  if(isEmpty()){
    print('Empty queue');
  }
  else{
    size--;
  Node n = head.next;
  Node prev = head;
  while(n.next!=null){
    prev = prev.next;
    n = n.next;
  }
  prev.next = null;
}
}
bool isEmpty(){
  return size==0;
}


display(){
  Node n = head;
  while(n!=null){
    stdout.write(' '+n.data);
    n = n.next;
  }
}