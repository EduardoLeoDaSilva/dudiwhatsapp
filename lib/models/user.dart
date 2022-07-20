class User {
  late String id;
  late String name;
  late String email;
  late List<User> users;

  User();

  User.fromJson(Map map) {
    id = map['id'];
    name = map['name'];
    email = map['email'];
    users = map['users'];
  }

  Map toJson() {
    return {'id': id, 'name': name, 'email': email, 'users': users};
  }
}
