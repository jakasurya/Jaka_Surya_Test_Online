import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mockva_rest/app/data/models/recive_model.dart';
import 'package:mockva_rest/app/data/models/transfer_model.dart';

import '../../data/models/account_model.dart';
import '../../data/models/session_model.dart';

final box = GetStorage();

bool loadSession() {
  var data = box.read('session') ?? '';
  return data.toString().trim().isNotEmpty ? true : false;
}

saveSession(value) {
  box.write('session', value);
}

SessionModel getSession() {
  final aa = box.read('session') ?? '';
  SessionModel sessionModel = sessionModelFromJson(aa);
  return sessionModel;
}

AccountDetailModel getAccountDetail() {
  return accountDetailModelFromJson(box.read('accountDetail') ?? '');
}

TransferModel getTransferData() {
  return transferModelFromJson(box.read('transfer') ?? '');
}

ReciveModel getRecive() {
  return reciveModelFromJson(box.read('recive') ?? '');
}

void warningDialog(message) {
  Get.dialog(
    AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            message,
            style: const TextStyle(
                color: Color(0xff535353), fontWeight: FontWeight.bold),
          ),
          SizedBox(height: Get.height * 0.03),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: Colors.black),
                  primary: Colors.white,
                  elevation: 1),
              onPressed: () => Get.back(),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Get.width * 0.1, vertical: Get.height * 0.01),
                child: Text(
                  'OK',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: (Get.width + Get.height) * 0.014),
                ),
              ))
        ],
      ),
    ),
  );
}

void popUp(message) {
  Get.dialog(
    barrierDismissible: false,
    AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: Get.height * 0.03),
          Text(
            message,
            style: const TextStyle(
                color: Color(0xff535353), fontWeight: FontWeight.bold),
          ),
          SizedBox(height: Get.height * 0.02),
        ],
      ),
    ),
  );
}
