import 'dart:convert';

List<HistoryDataModel> historyDataModelFromJson(String str) =>
    List<HistoryDataModel>.from(
        json.decode(str).map((x) => HistoryDataModel.fromJson(x)));

String historyDataModelToJson(List<HistoryDataModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class HistoryDataModel {
  HistoryDataModel({
    required this.id,
    required this.accountSrcId,
    required this.accountDstId,
    required this.clientRef,
    required this.amount,
    required this.transactionTimestamp,
  });

  String id;
  String accountSrcId;
  String accountDstId;
  String clientRef;
  double amount;
  String transactionTimestamp;

  factory HistoryDataModel.fromJson(Map<String, dynamic> json) =>
      HistoryDataModel(
        id: json["id"],
        accountSrcId: json["accountSrcId"],
        accountDstId: json["accountDstId"],
        clientRef: json["clientRef"],
        amount: json["amount"].toDouble(),
        transactionTimestamp: json["transactionTimestamp"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "accountSrcId": accountSrcId,
        "accountDstId": accountDstId,
        "clientRef": clientRef,
        "amount": amount,
        "transactionTimestamp": transactionTimestamp,
      };
}
