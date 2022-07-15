import 'dart:convert';

SessionModel sessionModelFromJson(String str) =>
    SessionModel.fromJson(json.decode(str));

String sessionModelToJson(SessionModel data) => json.encode(data.toJson());

class SessionModel {
  SessionModel({
    required this.id,
    required this.accountId,
    required this.lastLoginTimestamp,
    required this.sessionStatus,
  });

  String id;
  String accountId;
  String lastLoginTimestamp;
  String sessionStatus;

  factory SessionModel.fromJson(Map<String, dynamic> json) => SessionModel(
        id: json["id"],
        accountId: json["accountId"],
        lastLoginTimestamp: json["lastLoginTimestamp"],
        sessionStatus: json["sessionStatus"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "accountId": accountId,
        "lastLoginTimestamp": lastLoginTimestamp,
        "sessionStatus": sessionStatus,
      };
}
