class Course {
  final String title;
  final String instructor;
  final int hours;

  Course({required this.title, required this.instructor, required this.hours});

  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
      title: json['title'],
      instructor: json['instructor'],
      hours: json['hours'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'title': title, 'instructor': instructor, 'hours': hours};
  }

  String get label => "$title by $instructor for $hours hours.";
}

class Catalog {
  final String name;
  final List<Course> courses;

  Catalog({required this.name, required this.courses});

  factory Catalog.fromJson(Map<String, dynamic> json) {
    return Catalog(
      name: json['name'],
      courses: (json['courses'] as List)
          .map((e) => Course.fromJson(e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {'name': name, 'courses': courses.map((e) => e.toJson()).toList()};
  }

  String get label => "$name offers ${courses.length} courses";
}

void main() {
  var catalog_map = {
    "name": "SkillHub",
    "courses": [
      {"title": "Flutter Dev", "instructor": "Yash", "hours": 30},
      {"title": "Backend API", "instructor": "Amit", "hours": 25},
      {"title": "UI/UX Design", "instructor": "Priya", "hours": 20},
    ],
  };

  var catalog = Catalog.fromJson(catalog_map);
  print(catalog.label);
  catalog.courses.forEach((i) => print(i.title));
  catalog.courses.forEach((i) => print(i.label));
  print(catalog.toJson());
}
