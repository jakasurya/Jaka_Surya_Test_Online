import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mockva_rest/app/routes/pages_name.dart';

import '../../core/config/helper.dart';

class LoginControllers extends GetxController {
  TextEditingController usernameCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();
  @override
  void onInit() {
    usernameCtrl.text = 'USER040999';
    passwordCtrl.text = 'LBj5539';
    super.onInit();
  }

  @override
  void onReady() {
    if (loadSession()) Get.offNamed(PagesName.main);
    super.onReady();
  }

  @override
  void dispose() {
    usernameCtrl.dispose();
    passwordCtrl.dispose();
    super.dispose();
  }

  final box = GetStorage();
}
