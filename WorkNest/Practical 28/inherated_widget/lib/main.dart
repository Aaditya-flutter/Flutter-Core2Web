import "package:flutter/material.dart";
import "package:inherated_widget/controller/employee_controller.dart";
import "package:inherated_widget/views/employee_screen1.dart";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  final String empName = "Kanha";
  final int empId = 200;
  final double empSal = 2.3;

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Employee(
      empName: empName,
      empId: empId,
      empSal: empSal,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true),
        home: EmployeeScreen1(),
      ),
    );
  }
}
