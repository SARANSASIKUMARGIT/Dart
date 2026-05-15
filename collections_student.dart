import 'dart:io';

void main(/* Saran SK */) {
  int n, temp_id, temp_n;
  double temp_gpa, temp_cgpa;
  String name;
  Map<String, dynamic> studentDictionary = {};
  List<double> temp_score = [];
  List<String> studentWithHighCgpa = [];
  print("\t ---- Welcome to Student Record Management System ----");
  print("Enter the number of students : ");
  n = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < n; ++i) {
    studentDictionary["Student$i"] = {};
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
  print(studentDictionary);
}
