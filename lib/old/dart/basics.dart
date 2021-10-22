void main() {
  print('HelloWorld!');

  // print('Amir');
  // dataType variableName = value ;
  // data types => String , int , double , bool

  var numberOne = 1;
  numberOne = 2;
  print(numberOne);

  String name = "Amir Mohammed";
  int age = 20;
  double salary = 1.5;
  bool working = true;

  print('Name : $name');
  print('Age : $age years');
  print('Salary : $salary \$');
  print('Is working : $working');

  // amir != Amir
  // $ _
  var numberTwo = 2;
  var age$;
  var _name123;

  numberTwo++;
  print(numberTwo);

  numberTwo--;
  print(numberTwo);

  bool equalResult = (5 == 5);
  print(equalResult);

  bool notEqualResult = (10 != 5);
  print(notEqualResult);

  print(numberOne is double);
  print(numberTwo is! double); // is not

  numberTwo = numberTwo + 3;
  print(numberTwo);

  numberTwo += 5;
  print(numberTwo);

  numberTwo *= 5;
  print(numberTwo);

  var phone;
  print(phone);

  phone ??= "010";
  print(phone);

  phone ??= "011";
  print(phone);

  bool andResult = !(10 > 5 && 20 > 10 && 2 < 3); // !true
  print(andResult);

  bool orResult = (1 > 2 || 2 > 3 || 1 > 0);
  print(orResult);

  var res = (100 > 10) ? "value greater than 10" : "value lesser than or equal to 10";
  print(res);

  var x ="X";

  var nameResult = x ?? "No value";
  print(nameResult);

}
