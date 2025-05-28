class Animal {
  final String name;

  Animal({required this.name});

  void speak() {
    print("$name makes sound");
  }
}

class Dog extends Animal {
  Dog(String dname) : super(name: dname);

  void bark() {
    print("$name can bark");
  }
}

void main() {
  var dog = Dog("tommy");
  dog.speak();
  dog.bark();
}
