import 'package:flutter/material.dart';
import "package:inherated_widget/controller/employee_controller.dart";
import 'package:inherated_widget/views/employee_screen2.dart';

class EmployeeScreen1 extends StatefulWidget {
  const EmployeeScreen1({super.key});

  @override
  State<EmployeeScreen1> createState() => _EmployeeScreen1State();
}

class _EmployeeScreen1State extends State<EmployeeScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Employee Screen 1"),
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
        onPressed: () {
          setState(() {
            Employee.of(context).empSal = 3.0;
          });

          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return const EmployeeScreen2();
              },
            ),
          );
        },
        child: Icon(
          Icons.play_arrow_rounded,
          size: 40,
        ),
      ),
    );
  }
}
