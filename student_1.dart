class Student {
  final String name;
  final int marks;

  Student({required this.name, required this.marks});

  bool get hasPassed => marks >= 40;
  String get label => "Passed: $name ($marks)";
}

void main() {
  List<Student> students = [
    Student(name: "Yash", marks: 95),
    Student(name: "Riya", marks: 38),
    Student(name: "Karan", marks: 72),
    Student(name: "Aman", marks: 40),
  ];

  // 🟩 Task 1: Print names of students who passed

  students.where((s) => s.hasPassed).forEach((sp) => print(sp.name));

  // 🟩 Task 2: Make a list of only names of passed students

  List<Student> passedStudents = students.where((s) => s.hasPassed).toList();

  // 🟩 Task 3: Calculate average marks

  double sum =
      (students.fold(0, (previous, element) => previous + element.marks) /
      students.length);
  print(sum);

  // 🟩 Task 4: Print "Passed: NAME (marks)" using forEach only

  passedStudents.forEach((s) => print(s.label));
}
