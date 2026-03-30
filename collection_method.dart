import 'dart:io';

void main(/*SARAN SK*/) 
{
    List<Map<String,dynamic>> array_of_maps=[{"Regno":94,"Name":"Saran SK","cgpa":9.2,"isPass":true}, //array of maps/dictionaries
    {"Regno":95,"Name":"SK","cgpa":7.5,"isPass":true},
    {"Regno":96,"Name":"Self SK","cgpa":6.2,"isPass":true},
    {"Regno":97,"Name":"SelfMade","cgpa":7.0,"isPass":true},
    {"Regno":98,"Name":"Anonymous","cgpa":4.2,"isPass":false}];  
    List<int> registerNumbers=array_of_maps.map((s)=>s["Regno"] as int).toList();       //fetching the regno value from each dictionary and converting them into List<int>
    List<String> passedStudents=array_of_maps.where((s)=>s["isPass"]==true).map((s)=>s["Name"] as String).toList(); //filtering dictionaries where "isPass" value is true and making the "Name" values as List<String>
    double sum_of_cgpa_of_passedStudents=array_of_maps.where((s)=>s["isPass"]==true).map((s)=>s["cgpa"] as double).fold(0,(a,b)=>a+b);//adding the passedStudents dictionaries "cgpa" value and reduce them to sum the cgpa value
    print("Register Numbers : $registerNumbers");
    print("Passed Students : $passedStudents");
    print("Sum of CGPA of Passed Students : $sum_of_cgpa_of_passedStudents");
    
}

