import 'dart:io';
import 'dart:math';

main() {
  Random r = new Random();
  print('How many times you want to flip the coin');

  int time = stdin.readByteSync() - 48;
  print("time: $time");
  int countHead = 0;
  int countTail = 0;
  stdin.readLineSync();
  for (int j = 0; j < time; j++) {
    print('Enter 0 to flip your coin');
    int i = stdin.readByteSync()-48;
    stdin.readLineSync();
    if(i==0){
    int ran = r.nextInt(2);
    if(ran==0){
      countHead++;
    }
    else
      countTail++;
    }
  }
  print('head times = $countHead');
  print('head times = $countTail');
  double Taverage = (countTail*100)/time;
  double Haverage = (countHead*100)/time;

  print('Average of tail is: $Taverage');
  print('Average of head is: $Haverage');
}

