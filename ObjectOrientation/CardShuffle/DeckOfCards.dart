import 'dart:io';
import 'dart:math';
import '/home/administrator/AndroidStudioProjects/flutter_app_algo/DataStructure/Queue.dart';
class DeckOfCards {
  /*Queue q = new Queue();
  Queue q1 = new Queue();
  Queue q2 = new Queue();
  Queue q3 = new Queue();*/
  List l = new List();
  static int m = 4;
  static int n = 9;
  List<String> card = (["Clubs", "Diamonds", "Hearts", "Spades"]);
  List<String> typeOfCard =(["2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King", "Ace"]);
  var players = new List.generate(m, (_) => new List(n));
  List putToUser(){
    Random r = new Random();
    for(int i = 0;i<4;i++){
      // l.removeRange(0, l.length);
      for(int j = 0;j<9;){
        int c = r.nextInt(4);
        int t = r.nextInt(13);
        String st = "";
       // card.remove(c);
        //card.remove(t);
        st = card[c]+" of "+typeOfCard[t];
        if(!l.contains(st)){
          l.add(st);
          players[i][j] = st;
          j++;
        }
      }
    }
    return players;
  }

  sort(){
    Queue a = new Queue();
    List l = putToUser();
    List n = new List();
    for(int z = 0;z<4;z++){
      List ar = l[z];
      for(int k = 1;k<ar.length;k++) {
        for(int i=0;i<ar.length-1;i++) {
          if(ar[i].toString().compareTo(ar[i+1])>0) {
            String temp = ar[i];
            ar[i] = ar[i+1];
            ar[i+1] = temp;
          }
        }
      }
    }
    List<Queue> lq = new List<Queue>();
    for(int i = 0;i<4;i++){
      a.enque(l[i]);
    }
    a.display();
    print('');
  }
}
main(){
  DeckOfCards d = new DeckOfCards();
  d.sort();
}