import 'dart:io';

Map<String,dynamic> student_json(int regno,{String name="Student",double? cgpa}) //parameters declared inside the {} are need to be passed values by their name at function calling ex : student_json(regno,name : "Saran");
{
    Map<String,dynamic> json={"regno":regno,
                            "Name" : name,
                            "cgpa" : cgpa
    };
    return json;
}

void main()
{
    int regno;
    String name;
    double? cgpa;
    print("Regno : ");
    regno=int.parse(stdin.readLineSync()!);
    print('Name : ');
    name=stdin.readLineSync()!;
    print("cgpa : ");
    cgpa=double.parse(stdin.readLineSync()!);
    Map<String,dynamic> student_dict=student_json(regno,cgpa:cgpa,name:name); //function calling with 'regno' as positional parameter , 'name' & 'cgpa' as named parameters with default value
    print(student_dict);
    
}

