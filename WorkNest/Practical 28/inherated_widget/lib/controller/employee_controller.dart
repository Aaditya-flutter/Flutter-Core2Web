import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Employee extends InheritedWidget {
  final String empName;
  final int empId;
  double empSal;

  Employee({
    super.key,
    required this.empName,
    required this.empId,
    required this.empSal,
    required super.child,
  });

  static Employee of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType()!;
  }

  @override
  bool updateShouldNotify(Employee oldWidget) {
    return empSal != oldWidget.empSal;
  }
}
