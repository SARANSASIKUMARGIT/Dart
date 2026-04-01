import 'dart:io';

class Student
{
    int? age;
    String? name;
    double? cgpa;
    Student(Map<String,dynamic> dictionary)         //constructor of this class
    {
        name=dictionary["Name"];        //initializing data members of the class with value in the passed dictionary parameter
        age=dictionary["Age"];
        cgpa=dictionary["cgpa"];
    }
}

void main(/* Saran SK */)
{
    List<int> nums=[1,2,3,6,12,15];     //integer array
    Set<double> price={8.2,8.3,8.1,9.2,9.4}; //set of floating numbers
    Map<String,dynamic> dictionary={        //dictionary where each key contains value as dictionary
        "User1":{"Name":"Self Made","Age":21,"cgpa":7.15},
        "User2":{"Name":"Saran SK","Age":22,"cgpa":8.2}
    };
    Student s=Student(dictionary["User1"]); //passing the dictionary of "User1"'s key as argument
    print(s.name);  //printing the value of "name" in the object 's' 
    
}


