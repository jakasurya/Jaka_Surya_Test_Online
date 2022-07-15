import 'dart:convert';

TransferModel transferModelFromJson(String str) =>
    TransferModel.fromJson(json.decode(str));

String transferModelToJson(TransferModel data) => json.encode(data.toJson());

class TransferModel {
  TransferModel({
    required this.inquiryId,
    required this.accountSrcId,
    required this.accountDstId,
    required this.accountSrcName,
    required this.accountDstName,
    required this.amount,
  });

  String inquiryId;
  String accountSrcId;
  String accountDstId;
  String accountSrcName;
  String accountDstName;
  double amount;

  factory TransferModel.fromJson(Map<String, dynamic> json) => TransferModel(
        inquiryId: json["inquiryId"],
        accountSrcId: json["accountSrcId"],
        accountDstId: json["accountDstId"],
        accountSrcName: json["accountSrcName"],
        accountDstName: json["accountDstName"],
        amount: json["amount"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "inquiryId": inquiryId,
        "accountSrcId": accountSrcId,
        "accountDstId": accountDstId,
        "accountSrcName": accountSrcName,
        "accountDstName": accountDstName,
        "amount": amount,
      };
}
