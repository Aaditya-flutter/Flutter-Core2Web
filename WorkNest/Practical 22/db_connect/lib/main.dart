import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

dynamic database;

// class Player {
//   final String name;
//   final int jerNo;
//   final int runs;
//   final double avg;
//   const Player({
//     required this.name,
//     required this.jerNo,
//     required this.runs,
//     required this.avg,
//   });

//   Map<String, dynamic> playerMap() {
//     return {
//       "name": name,
//       "jerNo": jerNo,
//       "runs": runs,
//       "avg": avg,
//     };
//   }

//   @override
//   String toString(){
//     return '{name: $name, jerNo: $jerNo, runs: $runs, avg: $avg}';
//   }
// }

// Future insertPlayerData(Player obj) async {
//   final localDB = await database;

//   await localDB.insert(
//     "Player",
//     obj.playerMap(),
//     conflictAlgorithm: ConflictAlgorithm.replace,
//   );
// }

// Future getPlayerData() async {
//   final localDB = await database;

//   List<Map<String, dynamic>> playerList = await localDB.query("Player");

//   return List.generate(
//     playerList.length,
//     (i) {
//       return Player(
//         name: playerList[i]['name'],
//         jerNo: playerList[i]['jerNo'],
//         runs: playerList[i]['runs'],
//         avg: playerList[i]['avg'],
//       );
//     },
//   );
// }

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   database = await openDatabase(
//     join(await getDatabasesPath(), "PlayerDB.db"),
//     version: 1,
//     onCreate: (db, version) async {
//       await db.execute(
//         '''CREATE TABLE Player(
//           name TEXT,
//           jerNo INTEGER PRIMARY KEY,
//           runs INT,
//           avg REAL)''',
//       );
//     },
//   );

//   Player batsman1 = const Player(
//     name: "Virat Kohli",
//     jerNo: 18,
//     runs: 50000,
//     avg: 50.33,
//   );
//   insertPlayerData(batsman1);

//   Player batsman2 = const Player(
//     name: "Rohit Sharma",
//     jerNo: 45,
//     runs: 40000,
//     avg: 10.33,
//   );
//   insertPlayerData(batsman2);

//   Player batsman3 = const Player(
//     name: "Shubman Gill",
//     jerNo: 77,
//     runs: 80000,
//     avg: 30.33,
//   );
//   await insertPlayerData(batsman3);

//   print(await getPlayerData());
//   // runApp(const MainApp());
// }

// Employee database
class Employee {
  final int empId;
  final String name;
  final double sal;
  Employee({
    required this.empId,
    required this.name,
    required this.sal,
  });

  Map<String, dynamic> employeeMap() {
    return {
      "empId": empId,
      "name": name,
      "sal": sal,
    };
  }
}

Future<void> insertEmployeeData(Employee emp) async {
  final localDB = await database;

  localDB.insert(
    "Employee",
    emp.employeeMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future<List<Map<String, dynamic>>> getEmployeeData() async {
  final localDB = await database;

  List<Map<String, dynamic>> mapEntry = await localDB.query("Employee");

  return mapEntry;
}

Future deleteEmpData(Employee emp) async {
  final localDB = await database;

  await localDB.delete(
    'Employee',
    where: "empId = ?",
    whereArgs: [emp.empId],
  );
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  database = openDatabase(
    join(await getDatabasesPath(), "EmployeeDB"),
    version: 1,
    onCreate: (db, version) async {
      await db.execute('''CREATE TABLE Employee(
        empId INT,
        name TEXT,
        sal REAL)''');
    },
  );

  Employee emp1 = Employee(
    empId: 1010,
    name: "Kanha",
    sal: 1.5,
  );
  Employee emp2 = Employee(
    empId: 015,
    name: "Rahul",
    sal: 1.7,
  );

  await insertEmployeeData(emp1);
  await insertEmployeeData(emp2);

  List<Map<String, dynamic>> retVal = await getEmployeeData();

  for (var i = 0; i < retVal.length; i++) {
    print(retVal[i]);
  }

  await deleteEmpData(emp1);
  print("After Deletion");

  retVal = await getEmployeeData();
  for (var i = 0; i < retVal.length; i++) {
    print(retVal[i]);
  }
  Employee emp3 = Employee(
    empId: 118,
    name: "Ashish",
    sal: 2.0,
  );

  await insertEmployeeData(emp3);
  print("Inserted new data");
  retVal = await getEmployeeData();

  for (var i = 0; i < retVal.length; i++) {
    print(retVal[i]);
  }
}
