class Movie {
  final String title;
  double? rating;

  Movie({required this.title});

  bool get isHit => (rating ?? 0) >= 8;
  String get info => "$title has rating ${(rating ?? "N/A")}";
}

void main() {
  var movie = Movie(title: "John Wick");
  print(movie.isHit);
  print(movie.info);
  movie.rating = 9.5;
  print(movie.isHit);
  print(movie.info);
}
