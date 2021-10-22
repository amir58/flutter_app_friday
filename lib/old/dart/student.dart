
import 'package:flutter_app_friday/old/dart/student_actions.dart';

import 'human.dart';

class Student extends Human implements StudentActions{
  String id;

  Student(this.id, String myName, int age, double height, double weight)
      : super(myName, age, height, weight){
    print('New object from student');
  }

  @override
  printData() {
    print('- - - - - - - - - - - - ');
    super.printData();
    print('Student ID : $id');
  }

  @override
  test() {
    print('TEST');
  }

  @override
  void attendTime() {
    // TODO: implement attendTime
  }

  @override
  void studyTime() {
    // TODO: implement studyTime
  }

}

