import 'dart:io';

main() {
 /* print('Enter value for binary search');
  int i = int.parse(stdin.readLineSync());
  binarySearch(i);
  insertionSort();
  binarySort();*/
  guessGame();
}

void binarySearch(var n) {
  List l = new List();
  l.addAll([1, 2, 3, 4, 5, 6, 7, 8, 9]);
  int low = 0;
  int high = l.length - 1;
  int mid = 0;
  while (low <= high) {
    mid = ((low + high) / 2).round();
    if (l[mid] < n)
      low = mid + 1;
    else if (l[mid] > n) {
      high = mid - 1;
    } else {
      print('index of $n is $mid');
      break;
    }
  }
}

insertionSort() {
  List ar = new List();
  print('enter 9 elements');
  for (int z = 0; z < 9; z++) {
    int input = int.parse(stdin.readLineSync());
    ar.add(input);
  }
  //ar.addAll([1,3,2,6,5,4,8,7,9]);
  for (int i = 1; i < ar.length; i++) {
    int value = ar[i];
    int temp = i;
    while (temp > 0 && ar[temp - 1] > value) {
      ar[temp] = ar[temp - 1];
      temp = temp - 1;
    }
    ar[temp] = value;
  }
  print('Sorted Elements are List is:');
  for (int i = 0; i < ar.length; i++) {
    if(i>0) {
      stdout.write(' ');
    }
    stdout.write((ar[i]));
  }
  //return ar;
}

binarySort(){
  List ar = new List();
  print('enter 9 elements');
  for (int z = 0; z < 9; z++) {
    int input = int.parse(stdin.readLineSync());
    ar.add(input);
  }
  for(int k = 1;k<ar.length;k++) {
  for(int i=0;i<ar.length-1;i++) {
  //int j = ;
  if(ar[i]>ar[i+1]) {
  int temp = ar[i];
  ar[i] = ar[i+1];
  ar[i+1] = temp;
  }
  }
  }
  for (int i = 0; i < ar.length; i++) {
 print(ar[i]);
  }
}

guessGame(){


  print("numbers you wants");
  int n = int.parse(stdin.readLineSync());
  int low = 0;
  int high = n-1;
  int mid = 0;

  while(low!=high) {
    mid = ((low+high)/2).round();
    print('press 0 if Number between  $low  to $mid or 1 if num $mid  to $high');
    int i = int.parse(stdin.readLineSync());
    mid = ((low+high)/2).round()-1;
    //print('zzzzzzzzzzzzz$mid');
    if(i==0) {
      high = mid;
    }
    if(i==1)
      low = mid+1;
  }
  print(low);
}


