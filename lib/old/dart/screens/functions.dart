import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

void main(){
  var names = List.filled(10, "a", growable: true);
  Text(
    "HelloWorld!",
    maxLines: 1,
    overflow: TextOverflow.ellipsis,
  );

  sum(10, 15);

  subtract(numberTwo: 10, numberOne: 40);

  subtract(numberOne: 10);
}

void subtract({@required int numberOne, int numberTwo = 0}){
  int result = numberOne - numberTwo;
  print(result);
}

void sum(int numberOne , int numberTwo){
  int result = numberOne + numberTwo;
  print(result);
}