class Book {
  final String title;
  final String author;
  int? pages;

  Book({required this.title, required this.author, this.pages});

  bool get isLongBook {
    return (pages ?? 0) > 300;
  }

  String get summary => "$title by $author with ${(pages ?? 'unknown')} pages";
}

void main() {
  var book = Book(title: "Harry", author: "Yash");
  print(book.isLongBook);
  print(book.summary);
  book.pages = 350;
  print(book.isLongBook);
  print(book.summary);

}
