import 'dart:io';   //importing io package for using 'stdin.readLineSync()' to take input from user

List<int> return_list(int n)
{
    List<int> num=[];//assingning empty array to num as it is a non-nullable variable and must be assigned before it's use
    for(int i=0;i<n;++i)
    {
        print("Enter value $i : ");
        num.add(int.parse(stdin.readLineSync()!));
    }
    return num;  //return data of type List<int>
}

void main()
{
    int regno,n,sum=0;
    String name;
    double cgpa;
    List<int> marks;
    bool? isPass;       //nullable boolean variable
    try{
        print("Enter your regno : ");
        regno=int.parse(stdin.readLineSync()!);
        print("Enter your name : ");
        name=stdin.readLineSync()!;         //String 'name' is a non-nullable string type where stdin.readLineSync() returns a nullable value string type 
        print("Enter your cgpa : ");        //therefore !(null assertion) operator is used to make the return type of the function as non-nullable value
        cgpa=double.parse(stdin.readLineSync()!);
        print("Enter the number of subjects : ");
        n=int.parse(stdin.readLineSync()!);
        marks=return_list(n);
        for(int i=0;i<n;++i)
        sum+=marks[i];
        print("Final Sum : $sum");
        if(sum>=((n*100)/1.5))
        isPass=true;
        else 
        isPass=false;
    }catch(e){      //catching exception if occurs
    print("Exception occurs : $e");
    }   //finally block gets executed irrespective of the occurance of exception
    finally{
        print("Program Execution Completed");
    }
    print(isPass??true); //printing the value of boolena variable 'isPass' if it is null then the default value 'true' is printed by ?? (default) operator
    
}

