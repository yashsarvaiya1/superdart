void main() {
  var map = [
    {'name': "yash", 'age': 24},
    {'name': "riya", 'age': 20},
  ];
  map.add({'name': "arun", 'age': 17});

  print(map[0]['name']);
  print(map[0]['age']);
  print(map[1]['name']);

  map.forEach((u) => print(u));
  print("-----------------");

  map.removeWhere((u) => u['age'] == 17);
  map.forEach((u) => print(u));
  print("-----------------");

  map.add({'name': "arun", 'age': 11});

  int index = map.indexWhere((u) => u['name'] == "yash");
  if (index != -1) {
    map[index]['age'] = 23;
  }
  map.forEach((u) => print(u));
  print("-----------------");

  var major = map.where((u) => (u['age'] as int) > 15).toList();
  major.forEach((u) => print(u));
  print("-----------------");

  var label = map.map((u) => "${u['name']} is ${u['age']} years old.");
  label.forEach((l)=> print(l));
  print("-----------------");

}
