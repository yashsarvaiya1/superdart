class Book {
  final String title;
  final String author;

  Book({required this.title, required this.author});

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(title: json['title'], author: json['author']);
  }

  Map<String, dynamic> toJson() {
    return {'title': title, 'author': author};
  }

  String get label => "$title - $author";
}

class Library {
  final String name;
  final List<Book> books;

  Library({required this.name, required this.books});

  factory Library.fromJson(Map<String, dynamic> json) {
    return Library(
      name: json['name'],
      books: (json['books'] as List).map((e) => Book.fromJson(e)).toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'books': books.map((e) => e.toJson()).toList(),
    };
  }

  String get label => "$name has ${books.length} book";
}

void main() {
  var library_map = {
    "name": "City Central",
    "books": [
      {"title": "Dart 101", "author": "Yash"},
      {"title": "Flutter Basics", "author": "Riya"},
    ],
  };
  Library library = Library.fromJson(library_map);

  print(library.label);
  library.books.forEach((item) => print(item.title));
  library.books.forEach((item) => print(item.label));
  print(library.toJson());
}
