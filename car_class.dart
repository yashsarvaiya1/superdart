class Car {
  String brand;
  int year;
  int? milage;

  Car({required this.brand, required this.year, this.milage});

  bool get isOld => year < 2015;
  String get description =>
      "$brand from $year with ${milage == null ? 0 : milage}km";

  void drive(int km) {
    if (milage == null) {
      milage = km;
    }
    milage = milage! + km;
  }
}

void main() {
  Car car = Car(brand: "Toyota", year: 2016);
  print(car.brand);
  print(car.year);
  print(car.isOld);
  print(car.description);
  car.drive(100);
  car.drive(100);
  print(car.milage);
  print(car.description);
}
