import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mockva_rest/app/modules/home/home_controller.dart';

import 'widgets/textfield_home.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.loadHomeData();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
            child: Text(
          'Mockva Mobile',
          style: TextStyle(
              color: Colors.black, fontSize: (Get.width + Get.height) * 0.020),
        )),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Get.width * 0.10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('Account Number'),
                TextFieldHome(
                    hint: 'Account Number',
                    ctrl: controller.accountNumberCtrl,
                    edited: false),
              ],
            ),
            SizedBox(height: Get.height * 0.05),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('Name'),
                TextFieldHome(
                  hint: 'Name',
                  ctrl: controller.nameCtrl,
                  edited: false,
                ),
              ],
            ),
            SizedBox(height: Get.height * 0.05),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('Balance'),
                TextFieldHome(
                    hint: 'Balance',
                    ctrl: controller.balanceCtrl,
                    edited: false),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
