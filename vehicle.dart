import 'classes.dart';
void main() {
  
  Car car = Car("BMW", "X5", 2022, 4);

  car.displayInfo();

  print("------ Editing Year ------");

  car.year = 2025; // pass
  print("Updated Year: ${car.year}");

  // car.year = 1800; // throws Exception

}