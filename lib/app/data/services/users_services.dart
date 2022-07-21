import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:mockva_rest/app/modules/transfer/transfer_controller.dart';
import 'package:mockva_rest/app/routes/pages_name.dart';

import '../../core/config/api_config.dart';
import '../../core/config/helper.dart';
import '../../core/config/server_config.dart';
import '../models/session_model.dart';

class UsersServices {
  UsersServices({http.Client? httpClient})
      : httpClient_ = httpClient ?? http.Client();

  final http.Client httpClient_;
  final box = GetStorage();

  Future login(String username, String password) async {
    var content = {"username": username, "password": password};
    try {
      final loginResponse = await httpClient_
          .post(loginRequest, headers: loginHeader(), body: jsonEncode(content))
          .timeout(const Duration(seconds: 5),
              onTimeout: () => http.Response('Timeout', 408));

      if (loginResponse.statusCode != 200) {
        Get.back();
        return warningDialog(loginResponse.body);
      } else {
        if (loginResponse.body != 'Invalid session') {
          saveSession(loginResponse.body);
          detailAccount(sessionModelFromJson(loginResponse.body).accountId);
        }
        var result = json.decode(loginResponse.body);
        return result;
      }
    } catch (_) {}
  }

  Future detailAccount(String id) async {
    final detailAccount =
        Uri.parse(detailAccountRequest).replace(queryParameters: {'id': id});
    final response =
        await httpClient_.get(detailAccount, headers: headerWithSession());
    if (response.statusCode != 200) {
      box.erase().then((_) => Get.offAllNamed(PagesName.login));

      return response.body;
    } else {
      var result = response.body;
      box.write('accountDetail', result);
      return result;
    }
  }

  Future findUserByID(String id) async {
    final detailAccount =
        Uri.parse(detailAccountRequest).replace(queryParameters: {'id': id});
    final response =
        await httpClient_.get(detailAccount, headers: headerWithSession());
    if (response.statusCode != 200) {
      box.erase().then((_) => Get.offAllNamed(PagesName.login));

      return response.body;
    } else {
      return jsonDecode(response.body)['name'];
    }
  }

  Future historyTransaction(id) async {
    final logTransactionURL = Uri.parse(historyRequest)
        .replace(queryParameters: {'accountSrcId': id});
    final response =
        await httpClient_.get(logTransactionURL, headers: headerWithSession());
    if (response.statusCode != 200) {
      debugPrint(response.body);
      return response.body;
    } else {
      var result = json.decode(response.body);
      return result;
    }
  }

  Future logout() async {
    final response =
        await httpClient_.delete(logoutRequest, headers: headerWithSession());

    box.erase().then((_) => Get.offAllNamed(PagesName.login));
    return response.body;
  }

  Future transferInquiry(String src, String dst, double amount) async {
    var content = {"accountSrcId": src, "accountDstId": dst, "amount": amount};

    final response = await httpClient_.post(transferInquiryRequest,
        headers: headerWithSession(), body: jsonEncode(content));
    if (response.statusCode != 200) {
      return warningDialog(response.body);
    } else {
      var result = response.body;
      box
          .write('transfer', result)
          .then((_) => Get.toNamed(PagesName.transferConfirm));
      return result;
    }
  }

  Future transferConfirm() async {
    var content = {
      "accountSrcId": getTransferData().accountSrcId,
      "accountDstId": getTransferData().accountDstId,
      "amount": getTransferData().amount,
      "inquiryId": getTransferData().inquiryId
    };

    final response = await httpClient_.post(transferConfirmRequest,
        headers: headerWithSession(), body: jsonEncode(content));
    if (response.statusCode != 200) {
      return response.body;
    } else {
      var result = response.body;
      debugPrint(result);
      Get.put(TransferController()).saveHistoryItem(response.body);
      return result;
    }
  }
}
