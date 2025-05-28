enum UserRole { admin, editor, viewer }

class User {
  final String name;
  final UserRole role;

  User({required this.name, required this.role});

  String get label => "$name is ${role.name}";
}

void main() {
  User user1 = User(name: "yash", role: UserRole.admin);
  User user2 = User(name: "RIta", role: UserRole.editor);

  print(user1.label);
  print(user2.label);
}
