import 'dart:convert';

ReciveModel reciveModelFromJson(String str) =>
    ReciveModel.fromJson(json.decode(str));

String reciveModelToJson(ReciveModel data) => json.encode(data.toJson());

class ReciveModel {
  ReciveModel({
    required this.accountSrcId,
    required this.accountDstId,
    required this.clientRef,
    required this.amount,
    required this.transactionTimestamp,
  });

  String accountSrcId;
  String accountDstId;
  String clientRef;
  double amount;
  String transactionTimestamp;

  factory ReciveModel.fromJson(Map<String, dynamic> json) => ReciveModel(
        accountSrcId: json["accountSrcId"],
        accountDstId: json["accountDstId"],
        clientRef: json["clientRef"],
        amount: json["amount"].toDouble(),
        transactionTimestamp: json["transactionTimestamp"],
      );

  Map<String, dynamic> toJson() => {
        "accountSrcId": accountSrcId,
        "accountDstId": accountDstId,
        "clientRef": clientRef,
        "amount": amount,
        "transactionTimestamp": transactionTimestamp,
      };
}
