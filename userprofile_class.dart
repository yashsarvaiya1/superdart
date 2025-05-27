class Userprofile {
  final String username;
  String? bio;
  Userprofile({required this.username});

  void setDefaultBio() {
    bio ??= "Hey there! I'm new here";
  }

  void printBio() {
    if (bio != null) print(bio!);
  }
}

void main() {
  var user = Userprofile(username: "yash");
  user.printBio();
  user.setDefaultBio();
  user.printBio();
}
