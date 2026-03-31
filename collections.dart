import 'dart:io';

void main(/* Saran SK */)
{
    List<int> nums=[1,2,3,6,12,15];     //integer array
    Set<double> price={8.2,8.3,8.1,9.2,9.4}; //set of floating numbers
    Map<String,dynamic> dictionary={        //dictionary where each key contains value as dictionary
        "User1":{"Name":"Self Made","Age":21,"cgpa":7.15},
        "User2":{"Name":"Saran SK","Age":22,"cgpa":8.2}
    };
    nums.add(22);       //add element 22 to the integer array
    print("contains 8.2? = ${price.contains(8.2)}");        //check if value 8.2 exist in the set
    print("Name of Item 2 : ${dictionary["User1"]["Name"]}");   //printing the value "Name" of dictionary's first value
    print(nums);
    print(price);
    print(dictionary);
    
}

