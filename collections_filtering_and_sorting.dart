import 'dart:io';

//Hey , This is a Simple Dart Program for Student Data Management with Collections in Dart and filtering the data using in-built map(),where() methods
void main(/* Saran SK */) {
  int n, temp_id, temp_n;
  double temp_gpa, temp_cgpa;
  String name;
  Map<String, dynamic> studentDictionary = {};
  List<double> temp_score = [];
  print("\t ---- Welcome to Student Record Management System ----");
  print("Enter the number of students : ");
  n = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < n; ++i) {
    studentDictionary["Student$i"] = <String, dynamic>{};
    print("ID ${i + 1} : ");
    temp_id = int.parse(stdin.readLineSync()!);
    print("NAME ${i + 1} : ");
    name = stdin.readLineSync()!;
    print("Enter the number of semesters you appeared : ");
    temp_n = int.parse(stdin.readLineSync()!);
    temp_score = [];
    for (int j = 0; j < temp_n; ++j) {
      print("Enter GPA of Sem ${j + 1} : ");
      temp_gpa = double.parse(stdin.readLineSync()!);
      temp_score.add(temp_gpa);
    }
    temp_cgpa = temp_score.fold(0, (prev, next) => prev + next);
    temp_cgpa /= temp_n;
    //Adding the student data to the dictionary
    studentDictionary["Student$i"]["ID"] = temp_id;
    studentDictionary["Student$i"]["NAME"] = name;
    studentDictionary["Student$i"]["GPA"] = temp_score;
    studentDictionary["Student$i"]["CGPA"] = temp_cgpa;
  }

  //adding the values of the studentDictionary to a List<> for data filtering purpose
  List<Map<String, dynamic>> studentList =
      []; // or studentList = studentDictionary.values.toList();
  studentDictionary.forEach((key, value) {
    studentList.add(value);
  });
  print("List of Student Dictionary : $studentList");
  //Fitering the Student with CGPA >7.5 using where() with explicit type casting to its String to avoid Datatype Conflict List<String> vs List<Dynamic>
  List<String> allStudentsNameWithCGPAgreaterthan7point5 = studentList
      .where((value) => value["CGPA"] >= 7.5)
      .map(((value) => value["NAME"] as String))
      .toList();
  //Fitering the Student with CGPA >7.5 using where() with explicit type casting to its String to avoid Datatype Conflict List<String> vs List<Dynamic>
  List<String> allStudentsNameWithCGPAlessthan7point5 = studentList
      .where((value) => value["CGPA"] < 7.5)
      .map(((value) => value["NAME"] as String))
      .toList();
  //Filtering CGPA of all students with explicit type casting to its double to avoid Datatype Conflict List<double> vs List<Dynamic>
  List<double> allStudentsCGPA = studentList
      .map((value) => value["CGPA"] as double)
      .toList();
  //Filtering all Students name in a list with explicit type casting to its String to avoid Datatype Conflict List<String> vs List<Dynamic>
  List<String> allStudentsName = studentList
      .map((value) => value["NAME"] as String)
      .toList();

  //printing all values
  print(
    "List Of All Student Name                           : $allStudentsName",
  );
  print(
    "List Of All Student CGPA                           : $allStudentsCGPA",
  );
  print(
    "List Of All Student Name with CGPA >= 7.5          : $allStudentsNameWithCGPAgreaterthan7point5",
  );
  print(
    "List Of All Student Name with CGPA less than 7.5   : $allStudentsNameWithCGPAlessthan7point5",
  );
}
