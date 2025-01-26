import 'package:flutter/material.dart';
import "package:inherated_widget/controller/employee_controller.dart";

class EmployeeScreen2 extends StatefulWidget {
  const EmployeeScreen2({super.key});

  @override
  State<EmployeeScreen2> createState() => _EmployeeScreen2State();
}

class _EmployeeScreen2State extends State<EmployeeScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Employee Screen 2"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Container(
          height: 350,
          width: 250,
          color: Colors.deepPurpleAccent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Employee Data"),
              const SizedBox(
                height: 30,
              ),
              Text("Name: ${Employee.of(context).empName}"),
              const SizedBox(
                height: 30,
              ),
              Text("ID: ${Employee.of(context).empId}"),
              const SizedBox(
                height: 30,
              ),
              Text("Salary: ${Employee.of(context).empSal}"),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.play_arrow_rounded,
          size: 40,
        ),
      ),
    );
  }
}
