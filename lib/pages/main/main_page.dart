import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mockva_rest/app/modules/main/main_controller.dart';

class MainPage extends GetView<MainControllers> {
  const MainPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final mainctrl = controller;
    return Scaffold(
      body: Obx(() {
        return IndexedStack(
          index: controller.indexPage.value,
          children: mainctrl.mainPageList,
        );
      }),
      bottomNavigationBar: Container(
        height: Get.height * 0.1,
        decoration: BoxDecoration(
            border: Border.all(color: const Color(0xff7F7F7F), width: 1),
            gradient: const LinearGradient(
                begin: Alignment(-1.0, -1.0),
                end: Alignment(-1.0, 1.0),
                colors: [Colors.white, Color(0xff7F7F7F)])),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: controller.navigationItem,
        ),
      ),
    );
  }
}
