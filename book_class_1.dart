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

  String get label => "$title by $author has $pages pages.";
}

void main() {
  var book_map = {'title': "potter", 'author': "yash", 'pages': 390};
  var book = Book.fromJson(book_map);
  print(book.label);
  print(book.toJson());
}
