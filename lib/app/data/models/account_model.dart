import 'dart:convert';

AccountDetailModel accountDetailModelFromJson(String str) =>
    AccountDetailModel.fromJson(json.decode(str));

String accountDetailModelToJson(AccountDetailModel data) =>
    json.encode(data.toJson());

class AccountDetailModel {
  AccountDetailModel({
    required this.id,
    required this.name,
    required this.username,
    required this.balance,
  });

  String id;
  String name;
  String username;
  double balance;

  factory AccountDetailModel.fromJson(Map<String, dynamic> json) =>
      AccountDetailModel(
        id: json["id"],
        name: json["name"],
        username: json["username"],
        balance: json["balance"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "username": username,
        "balance": balance,
      };
}
