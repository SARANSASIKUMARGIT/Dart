import 'dart:io';
//simple program to store items of the user 

class Data //parent class that stores the data of each instance(user)
{
  Map<String, dynamic> data = {};
  void addData(String s, Set<String> items) {
    data[s] = {"items": items, "selectedItems": {}};
  }
}

class Client extends Data {
  String? Name;
  Set<String> items = {}; //total items of user
  Client(this.Name); //constructor
  String? S;
  int? I;
  void addItems() {
    //function to add all items of the user in a dictionary
    print(
      "Enter the name of the items you own (enter 'end' when completed) : ",
    );
    S = '';
    while (S != "end") {
      S = stdin.readLineSync()!;
      if (S != "end") items.add(S!);
    }
    print(items);
    super.addData("Trip1", items);
  }

  void selectForTrip() {
    //function to select items for a trip
    print("Enter selected item names for this trip (enter 'end' when done) : ");
    S = '';
    while (S != 'end') {
      print("Item Name : ");
      S = stdin.readLineSync()!;
      print("Count :");
      I = int.parse(stdin.readLineSync()!);
      super.data["Trip1"]["selectedItems"][S] = I;
    }

    print(super.data); //print the item data of the user
  }

  void showData() {
    print(data);
  }
}

void main(/* Saran SK */) {
  Client C = Client("Saran SK"); //creating an instance of the Client class
  try {
    C.addItems(); //try block
    C.showData();
    C.selectForTrip();
  } catch (e) {
    print(e); //catch block
  } finally {
    C.showData();
  }
}
