import 'dart:convert';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mockva_rest/app/data/models/history_model.dart';

class HistoryController extends GetxController {
  final box = GetStorage();
  var historyList = <Datum>[].obs;

  void fatchHistory(frombody) {
    historyList.clear();
    historyList.value = historyModelFromJson(jsonEncode(frombody)).data;
  }
}
