import 'dart:io';

void main() {}

void perform() async {
  task1();
  await task2();
  task3();
  task4();
}

void task1() {
  print('task1');
}

void task2() async {
  Duration a = Duration(seconds: 2);

  await Future.delayed(a, () {
    print('task2 complete');
  });

  print('task2');
}

void task3() {
  print('task3');
}

void task4() {
  print('task4');
}
