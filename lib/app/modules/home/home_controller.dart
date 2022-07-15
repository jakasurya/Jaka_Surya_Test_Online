import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mockva_rest/app/core/config/formatted.dart';
import 'package:mockva_rest/app/data/services/users_services.dart';

import '../../core/config/helper.dart';

class HomeController extends GetxController {
  TextEditingController accountNumberCtrl = TextEditingController();
  TextEditingController nameCtrl = TextEditingController();
  TextEditingController balanceCtrl = TextEditingController();

  final box = GetStorage();

  void loadHomeData() {
    if (loadSession()) {
      UsersServices().detailAccount(getSession().accountId).then((value) {
        return fatchData();
      });
    } else {
      accountNumberCtrl.text = '';
      nameCtrl.text = '';
      balanceCtrl.text = '';
    }
  }

  void fatchData() {
    accountNumberCtrl.text = getAccountDetail().id;
    nameCtrl.text = getAccountDetail().name;
    balanceCtrl.text = setCurrency.format(getAccountDetail().balance);
  }

  @override
  void dispose() {
    accountNumberCtrl.dispose();
    nameCtrl.dispose();
    balanceCtrl.dispose();
    super.dispose();
  }

  @override
  void onInit() {
    loadHomeData();
    super.onInit();
  }

  @override
  void onReady() {
    loadHomeData();
    super.onReady();
  }
}
