
import 'dart:core';
import 'dart:math';

main() {

///*************************************************************4-Geometric Shapes*******************************************************///
Rectangle num1 = Rectangle(2, 5.0, 20.0);
num1.CalculateArea();
num1.CalculatePerimeter();
num1.Display();

Circle num2 = Circle(0,2.0);
num2.CalculateArea();
num2.CalculatePerimeter();
num2.Display();

Triangle num3 = Triangle(3, 5.0,10.0,20);
num3.CalculateArea();
num3.CalculatePerimeter();
num3.Display();

///*************************************************************3-Bank Account Abstraction*******************************************************///

SavingsAccount save1 = SavingsAccount("mohammed", 656455, 5000.0);
save1.ClulcateInterest();
print(save1.getInterest());

CheckingAccount check1 = CheckingAccount("ahmed", 9595911, 5000.0);
check1.overdraftProtection(5001.0);


}

/**************************************************************1-Vehicle Hierarchy*********************************************************/
class Vehicle {
 String ?brand;
 String ?model;
 int ?year;
 Vehicle(this.brand, this.model, this.year);
}
class Car extends Vehicle{
  int numberOfDoors;

  Car(String brand, String model, int year, this.numberOfDoors) : super(brand, model, year);
}
class Motorcycle extends Vehicle{
  bool hasSidecar;

  Motorcycle(String brand, String model, int year, this.hasSidecar) : super(brand, model, year);
}
class Truck extends Vehicle{
  double loadCapacity;

  Truck(String brand, String model, int year, this.loadCapacity) : super(brand, model, year);
}
///*************************************************************2-Employee Hierarchy*******************************************************///

class Employee{
  String ?name;
  int ?age;
  double ?salary;
 Employee(this.name,this.age,this.salary);
}
class Manager extends Employee{
 String ?department;
 Manager(String name,int age,double salary,this.department):super(name,age,salary);
}
class Developer extends Employee{
  String ?ProgramingLanguage;
  Developer(String name,int age,double salary,this.ProgramingLanguage):super(name,age,salary);
}
class Designer extends Employee{
  String ?tool;
  Designer(String name,int age,double salary,this.tool):super(name,age,salary);
}
///*************************************************************3-Bank Account Abstraction*******************************************************///

abstract class BankAccount {
  String ?name;
  int ?AccID;
  double ?balance;

  BankAccount(this.name, this.AccID, this.balance);

  ClulcateInterest();
  overdraftProtection(double out);

}
class SavingsAccount extends BankAccount {

  double ?Interest;

  SavingsAccount(String name, int AccID, double balance):super(name, AccID, balance);

  @override ClulcateInterest() {
    Interest = balance! * 0.1;
  }
  getInterest() {
    return Interest;
  }
  @override
  overdraftProtection(double out) {
    // TODO: implement overdraftProtection
    throw UnimplementedError();
  }
}

class CheckingAccount extends BankAccount{

  CheckingAccount(String name,int AccID,double balance):super(name,AccID,balance);
  @override overdraftProtection(double out) {
    if(out>super.balance!){
    print("Sorry There is no enough balance");
    }else{
    super.balance = super.balance! - out;
    print("your current balance : $balance");
    }
  }

  @override
  ClulcateInterest() {
    // TODO: implement ClulcateInterest
    throw UnimplementedError();
  }
}

///*************************************************************4-Geometric Shapes*******************************************************///
class Shape{
  int ?NumofSides;
  double ?area;
  double ?perimeter;

  CalculateArea(){}
  CalculatePerimeter(){}
  Display(){}

}
class Rectangle extends Shape{

 double ?lenght;
 double ?width;

 Rectangle(int num,this.lenght,this.width){
   super.NumofSides = num;
 }

 @override CalculateArea() {
   super.area = lenght!*width!;
  }
 @override CalculatePerimeter() {
   super.perimeter = (lenght!+width!)*2;
 }
 @override Display() {
   print("number of sides :$NumofSides , lenght : $lenght , width : $width , area : $area , perimeter : $perimeter");
 }
}

class Circle extends Shape{
double ?r;

Circle(int num,this.r){
  super.NumofSides = num;
}

@override CalculateArea() {
    super.area = pi*r!*r!;
  }
@override CalculatePerimeter() {
  super.perimeter = 2*pi*r!;
  }
@override Display() {
  print("number of sides :$NumofSides , radius : $r , area : $area , perimeter : $perimeter");
}
}

class Triangle extends Shape{

 double ?height;
 double ?base;
 double ?thirdSide;

 Triangle(int num,this.height,this.base,this.thirdSide){
   super.NumofSides = num;
 }

 @override CalculateArea() {
   super.area = 0.5*base!*height!;
 }
 @override CalculatePerimeter() {
   super.perimeter = height!+base!+thirdSide!;
 }
 @override Display() {
   print("number of sides :$NumofSides , height : $height , base : $base , thirdSide : thirdSide, area : $area , perimeter : $perimeter");
 }
}

///
/// True or false
//1-false
//2-false
//3-true
//4-false
//5-true
//6-true
//7-false

///What do you know about :
//1- function that does not have a body
//2- class - abstract class - child class - Mixin class
//3-special function that can be named with the same name of the class or not - first to cary attributs