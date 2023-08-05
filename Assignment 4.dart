import 'dart:math';
abstract class Shape{
  double get area;
  double calculateArea();
}

abstract  class TwoDimensionalShape extends Shape{
  @override
  double get area => 0.0;
  @override
  double calculateArea() => area;
  void display(){
    print("calculating Area of The Shape...");
  }
}

 class Circle extends TwoDimensionalShape{
  final double radius;

  Circle(this.radius);

  @override
  double get area => pi * radius * radius;

  void display(){
    print("calculating Area of The 2D Shape...");
    super.display();
    print("Area of the Circle: $area" );
    print(" ");
  }
}

abstract class ThreeDimensionalShape extends Shape{
  double get volume;

  @override
  double get area => 0.0;

  @override
  double calculateArea() => area;

  void display(){
    print("calculating Area of The Shape...");
  }
}

 class Sphere extends ThreeDimensionalShape{
  final double radius;

  Sphere(this.radius);

  @override
  double get area => 4 * pi * radius * radius;

  @override
  double get volume => (4 / 3) * pi * radius * radius * radius;

  void display(){
    print("Calculating Area of The 3D Shape");
    super.display();
    print("Area of the Sphere: $area" );
    print("Volume of the Sphere: $volume");
  }

}

main(){

  Circle circle = Circle(5.0);
  Sphere sphere = Sphere(5.0);
  circle.display();
  sphere.display();
}