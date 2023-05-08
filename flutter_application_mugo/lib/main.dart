import 'package:flutter/material.dart';

void main() {
  num numbers = 30;
  numbers = 20.4;
  print(numbers);
}

// to prevent the on=bjects from being modified after instantiation we use the final on the field
// and const on the constructors
class User {
  final String name;
  final String school;

  const User(
      {required String firstName,
      required String lastName,
      required this.school})
      : name = '$lastName $firstName';

  bool hasLongName() {
    return name.length > 10;
  }
}
