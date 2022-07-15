import 'dart:convert';

List<UsersModel> usersModelFromJson(String str) =>
    List<UsersModel>.from(json.decode(str).map((x) => UsersModel.fromJson(x)));

String usersModelToJson(List<UsersModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UsersModel {
  UsersModel({
    this.id,
    this.name,
    required this.username,
    required this.password,
  });

  String? id;
  String? name;
  String username;
  String password;

  factory UsersModel.fromJson(Map<String, dynamic> json) => UsersModel(
        id: json["id"],
        name: json["name"],
        username: json["username"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "username": username,
        "password": password,
      };
}

var userData = jsonEncode([
  {
    "id": "8233200409103259",
    "name": "Account 040921",
    "username": "USER040921",
    "password": "tya3158"
  },
  {
    "id": "8225200409103259",
    "name": "Account 040905",
    "username": "USER040905",
    "password": "QYd2991"
  },
  {
    "id": "8243200409103259",
    "name": "Account 040913",
    "username": "USER040913",
    "password": "YYm0232"
  },
  {
    "id": "8230200409103259",
    "name": "Account 040947",
    "username": "USER040947",
    "password": "yvC3078"
  },
  {
    "id": "8296200409103259",
    "name": "Account 040910",
    "username": "USER040910",
    "password": "leA7915"
  },
  {
    "id": "8282200409103259",
    "name": "Account 040948",
    "username": "USER040948",
    "password": "UmU9568"
  },
  {
    "id": "8260200409103259",
    "name": "Account 040907",
    "username": "USER040907",
    "password": "Bzx8155"
  },
  {
    "id": "8258200409103259",
    "name": "Account 040999",
    "username": "USER040999",
    "password": "LBj5539"
  },
  {
    "id": "8239200409103259",
    "name": "Account 040986",
    "username": "USER040986",
    "password": "SNs6255"
  }
]);

var userList = usersModelFromJson(userData);
