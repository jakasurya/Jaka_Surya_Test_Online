import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mockva_rest/app/core/config/helper.dart';
import 'package:mockva_rest/app/data/services/users_services.dart';
import 'package:mockva_rest/app/modules/main/main_controller.dart';

class AccountPage extends GetView<MainControllers> {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Account',
          style: TextStyle(
              color: Colors.black, fontSize: (Get.width + Get.height) * 0.020),
        ),
      ),
      body: Center(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.grey),
            onPressed: () {
              popUp('Logout ...');
              UsersServices().logout();
            },
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Get.width * 0.06, vertical: Get.height * 0.02),
              child: Text(
                'Logout',
                style: TextStyle(fontSize: (Get.width + Get.height) * 0.020),
              ),
            )),
      ),
    );
  }
}
