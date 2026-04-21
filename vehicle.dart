import 'classes.dart';
void main() {
  
  Car car = Car("BMW", "X5", 2022, 4);
  Truck truck = Truck("Mercedes", "Actros", 2020, 18);
  Bike bike = Bike("Yamaha", "R1", 2021);
  
  print("---- Car ----");
  car.displayInfo();
  car.service();
  car.trackLocation();

  print("\n---- Truck ----");
  truck.displayInfo();
  truck.service();

  print("\n---- Bike ----");
  bike.displayInfo();
  bike.trackLocation();

  print("------ Editing Year ------");

  car.year = 2025; // pass
  print("Updated Year: ${car.year}");

  // car.year = 1800; // throws Exception

}