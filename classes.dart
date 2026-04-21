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

  // Setter مع validation
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
class Car extends Vehicle {
  int numberOfDoors;
  // Use super to inherit from the parent class
  Car(String brand, String model, int year, this.numberOfDoors)
      : super(brand, model, year);

  @override
  void displayInfo() {
    super.displayInfo(); // Use the parent class method to display common info
    print("Number of Doors: $numberOfDoors");
  }
}