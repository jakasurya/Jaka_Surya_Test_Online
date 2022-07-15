import 'dart:convert';

HistoryModel historyModelFromJson(String str) =>
    HistoryModel.fromJson(json.decode(str));

String historyModelToJson(HistoryModel data) => json.encode(data.toJson());

class HistoryModel {
  HistoryModel({
    required this.data,
    required this.rowCount,
  });

  List<Datum> data;
  int rowCount;

  factory HistoryModel.fromJson(Map<String, dynamic> json) => HistoryModel(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        rowCount: json["rowCount"],
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "rowCount": rowCount,
      };
}

class Datum {
  Datum({
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
  DateTime transactionTimestamp;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        accountSrcId: json["accountSrcId"],
        accountDstId: json["accountDstId"],
        clientRef: json["clientRef"],
        amount: json["amount"].toDouble(),
        transactionTimestamp: DateTime.parse(json["transactionTimestamp"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "accountSrcId": accountSrcId,
        "accountDstId": accountDstId,
        "clientRef": clientRef,
        "amount": amount,
        "transactionTimestamp": transactionTimestamp.toIso8601String(),
      };
}
