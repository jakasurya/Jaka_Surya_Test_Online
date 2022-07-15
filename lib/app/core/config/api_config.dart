import 'package:get_storage/get_storage.dart';
import 'package:intl/intl.dart';

import '../../data/models/session_model.dart';

final box = GetStorage();

DateTime now = DateTime.now();
String formattedDate = DateFormat('yyyy-MM-dd HH:mm:ss').format(now);
Map<String, String> loginHeader() {
  return {'Content-Type': 'application/json'};
}

Map<String, String> headerWithSession() {
  SessionModel sessionID = sessionModelFromJson(box.read('session') ?? '');

  return {"Content-type": "application/json", "_sessionId": sessionID.id};
}
