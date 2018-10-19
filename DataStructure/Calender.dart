import 'dart:io';
class Calender{
 // int count = 1;
  printCalender(int year,int month,int day){


    List l = new List();
    List l2 = new List();

    l.addAll([0,31,28,31,30,31,30,31,31,30,31,30,31]);
    l2.addAll(['','January','Febuary','March','April','May','June','July','August','September','October','November','December']);
    print(l2[month]+' $year');
    print('  Su  Mo  Tu  We  Th  Fr  Sa');
    var x = new List.generate(12, (_) => new List(31));
    if( (year%400==0 || year%100!=0) &&(year%4==0)){
      l[2] = 29;
    }

    for(int i = 1;i<=l[month];){
      if(i==1){
      for(int j = 0;j<day;j++){
          stdout.write('    ');
        }
      }
      for(int j = day;j<7;j++){
        if(i>l[month]){break;}
        
          stdout.write('$i'.padLeft(4,' '));
          i++;
        }
        day = 0;
        print('');
    }
  }
void daysMonth(int y, int m){
  int d = 1;
  int year = (y - ((14 - m) / 12).toInt()).toInt();
  print(year);
  int x = (((year) + (year/4).toInt() - (year/100).toInt() + (year/400).toInt())).toInt();
  print(x);
  int month = (m + 12 * ((14 - m).toInt() / 12).toInt() - 2).toInt();
  print(month);
  int day = ((d + x + 31*month / 12).toInt() % 7).toInt() ;
  print(day);
  print('dayn is $day');
  Calender c = new Calender();
  c.printCalender(y, m, day);

}
}
main(){
  Calender c = new Calender();
  print('Enter year');
  int year = int.parse(stdin.readLineSync());
  print('Enter month');
  int month = int.parse(stdin.readLineSync());
  c.daysMonth(year, month);

}


/* for(int j = 0;j<=l[month];j++){
      print('');
      if(count2==1){
      for(int i = 0;i<day;i++) {
        stdout.write('  ');}
      }

      for(int i = day;i<7;i++){
        if(j<=l[month]){
          if(i>0&&i<7){
            stdout.write('  ');
          }
          stdout.write('$count');
          count++;
         if(count>31)
           return;
        }
      }
      day =0;
    }
  }*/