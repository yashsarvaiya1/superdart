class Book {
  final String title;
  final String author;
  final int pages;

  Book({required this.title, required this.author, required this.pages});

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      title: json['title'],
      author: json['author'],
      pages: json['pages'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'title': title, 'author': author, 'pages': pages};
  }

  String get label => "$title by $author has $pages pages";
}

class Library {
  final String name;
  final Book book;

  Library({required this.name, required this.book});

  factory Library.fromJson(Map<String, dynamic> json) {
    return Library(name: json['name'], book: Book.fromJson(json['book']));
  }

  Map<String, dynamic> toJson() {
    return {'name': name, 'book': book.toJson()};
  }

  String get label => "$name library has book ${book.title}";
}

void main() {
  var library_map = {
    'name': "MJ",
    'book': {'title': "potter", 'author': "yash", 'pages': 390},
  };

  var library = Library.fromJson(library_map);

  print(library.book.label);
  print(library.label);
}
