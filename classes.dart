// Abstract Class (Interface)
abstract class Serviceable {
  void service(); // method without implementation
}

// Mixin
mixin GPSReady {
  void trackLocation() {
    print("Tracking location via GPS...");
  }
}
// Parent class representing a generic vehicle
class Vehicle {
  String _brand;
  String _model;
  int _year;

  Vehicle(this._brand, this._model, int year)
      : _year = (year >= 1900 ? year : throw Exception("Invalid year"));

  // Getters
  String get brand => _brand;
  String get model => _model;
  int get year => _year;

  // Setter with validation
  set year(int value) {
    if (value < 1900) {
      throw Exception("Invalid year");
    }
    _year = value;
  }

  void displayInfo() {
    print("Brand: $_brand, Model: $_model, Year: $_year");
  }
}
// Child class representing a car, inheriting from Vehicle
class Car extends Vehicle with GPSReady implements Serviceable {
  int numberOfDoors;

  Car(String brand, String model, int year, this.numberOfDoors)
      : super(brand, model, year);

  @override
  void service() {
    print("Car is being serviced");
  }

  @override
  void displayInfo() {
    print("Car");
    super.displayInfo();
    print("Doors: $numberOfDoors");
  }
}
class Truck extends Vehicle implements Serviceable {
  double loadCapacity;

  Truck(String brand, String model, int year, this.loadCapacity)
      : super(brand, model, year);

  @override
  void service() {
    print("Truck is being serviced");
  }

  @override
  void displayInfo() {
    print("Truck");
    super.displayInfo();
    print("Load: $loadCapacity tons");
  }
}
// Another child class representing a bike, inheriting from Vehicle
class Bike extends Vehicle with GPSReady {
  Bike(String brand, String model, int year)
      : super(brand, model, year);

  @override
  void displayInfo() {
    print("Bike");
    super.displayInfo();
  }
}