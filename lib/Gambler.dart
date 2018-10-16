import 'dart:io';
import 'dart:math';

main() {
  print('Enter your stake');
  String st = stdin.readLineSync();
  int stake = int.parse(st);
  print('Enter your goal');
  String st2 = stdin.readLineSync();
  int goal = int.parse(st2);
  print('Enter TIMES');
  String st3 = stdin.readLineSync();
  int times = int.parse(st3);
  gamePlay(stake, goal, times);
}

void gamePlay(int stake, int goal, int times) {
  double win = 0.0;
  double lost = 0.0;
  int noofbets = 0;
  Random r = new Random();


  for (int i = 0; i < times; i++) {
    int ran = r.nextInt(2);
    //print('ran is $ran');
    int temp = stake;
    noofbets++;
    while (temp > 0 && temp < goal) {
      if (ran==0) {
        temp++;
      } else {
        temp--;
      }
    }
    if (temp == goal) {
      win++;
    } else if (temp == 0) {
      lost++;
    }
  }
 print("win $win times");
print("lost $lost times");
  double perofwin = (win)/noofbets*100;
  double peroflost = (lost)/noofbets*100;
  print("% of win $perofwin");
  print("% of lost $peroflost");
}
