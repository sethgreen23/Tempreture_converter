import 'dart:io';
import'dart:math';

main() {

  //declare the variables
  String choice ; //the choice from the menu
  double degree; //the input that the user enter
  double result; //the computed result
  String yn; //the user choice of playing again or not
  do{
    print("Welcome To our Conversion Tool");
    print("A - Convert From F to C");
    print("B - Convert From C to F");
    print("Exit - Exit the Tool");
    print("Please enter Your Choice:");
    //get the choice from the menu in lowercase
    choice = stdin.readLineSync().toLowerCase();
    switch(choice){
      case "a":
        print("Please Enter The Degree to convert From Ferhenit to Celcius");
        //get the input of the degree and convert it into a double
        degree=double.parse(stdin.readLineSync()) ;
        result=(degree-32)*(5/9);
        print("Your Conversion from F to C $result");
        break;
      case "b":
        print("Please Enter The Degree to convert From Celcius to Ferhenit");
        degree=double.parse(stdin.readLineSync()) ;
        result=(degree*(9/5))+32;
        print("Your Conversion from C to F $result");
        break;
      case "exit":
        print("Thank you For Using Our Application Let Us See You Again :)");
        break;
    }
    //if the choice of the user is not exit
    if(choice.toLowerCase()!='exit'){
      //ask the user if he want to play again or to quit
      print("Do You Want To Play Again ? Y/N");
      yn=stdin.readLineSync();
      //if the user tell that he dont want to play again
      if(yn.toLowerCase()=="n"){
        print("Thank you For Using Our Application Let Us See You Again :)");
      }
    }
    //break the loop if you get a no or exit
  }while(choice.toLowerCase()!='exit'&& yn.toLowerCase()!='n');
}
