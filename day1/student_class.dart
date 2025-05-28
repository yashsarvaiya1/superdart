class Student {
  String name;
  int? marks;
  Student({required this.name});

  bool get hasPassed => marks == null ? false : (marks! >= 40);
  String get grade {
    if (marks == null) {
      return "F";
    } else if (marks! >= 90) {
      return "A";
    } else if (marks! >= 75) {
      return "B";
    } else if (marks! >= 50) {
      return "C";
    } else {
      return "F";
    }
  }

  void greet() {
    print("Hi, I'm $name and my grade is $grade");
  }
}

void main() {
  var student = Student(name: "yash");
  print(student.name);
  print(student.marks);
  print(student.hasPassed);
  print(student.grade);
  student.greet();
  student.marks = 95;
  print(student.hasPassed);
  print(student.grade);
  student.greet();
}
