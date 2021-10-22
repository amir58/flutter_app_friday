import 'dart:convert';

abstract class Human {
  // Global variables
  String _name;
  int _age;
  double _height;
  double _weight;
  static String gender;

  Human(String name, int age, double height, double weight) {
    // name => locale variable
    this._name = name;
    this._age = age;
    this._height = height;
  }

  Human.line(this._name, this._age, this._height, this._weight);

  Human.print(this._name, this._age, this._height, this._weight) {
    printData();
  }

  printData() {
    print('Name : $_name');
    print('Age : $_age');
    print('Height : $_height');
    print('Weight : $_weight');
    print('Gender : $gender');
  }

  test();

  int get age => _age;

  set age(int value) {
    _age = value;
  }

  double get height => _height;

  set height(double value) {
    _height = value;
  }

  double get weight => _weight;

  set weight(double value) {
    _weight = value;
  }

  void setAge(int age){
    this._age = age;
  }

  int getAge(){
    return this._age;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

}
