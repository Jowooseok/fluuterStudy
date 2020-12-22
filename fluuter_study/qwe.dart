import 'dart:io';

void main() {
  perform();
}

void perform() async {
  await task2();
  task1();

  task3();
  task4();
}

void task1() {
  print('task1');
}

void task2() async {
  Duration a = Duration(seconds: 2);

  print('task2');

  await Future.delayed(a, () {
    print('task2 complete');
  });
}

void task3() {
  print('task3');
}

void task4() {
  print('task4');
}
