class Dog {
  final String name;
  int? age;
  Dog({required this.name});

  bool get ispuppy => age! < 5;

  String get description => "$name is $age yeard old!";

  void bark() {
    print("$name says woof!");
  }
}

void main() {
  final dog = Dog(name: "xymon");
  dog.age = 10;

  print(dog.name);
  print(dog.age);
  print(dog.ispuppy);
  print(dog.description);
  dog.bark();
}
