import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../app/modules/main/main_controller.dart';

class NavigationBottomItem extends GetView<MainControllers> {
  const NavigationBottomItem({
    Key? key,
    required this.label,
    required this.icon,
    required this.index,
  }) : super(key: key);

  final String label;
  final IconData icon;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        int colorfont =
            controller.indexPage.value == index ? 0xff535353 : 0xff535353;
        int coloricon =
            controller.indexPage.value == index ? 0xff000000 : 0xff939393;
        return Stack(
          children: [
            Material(
              color: controller.indexPage.value == index
                  ? Colors.black.withAlpha(10)
                  : Colors.grey.withAlpha(8),
              child: InkWell(
                onTap: () {
                  FocusScope.of(context).unfocus();
                  controller.setPage(index);
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: Get.height * 0.005),
                  child: SizedBox(
                    width: Get.width * 0.20,
                    height: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          icon,
                          size: Get.width * 0.09,
                          color: Color(coloricon),
                        ),
                        Text(
                          label,
                          style: TextStyle(
                              color: Color(colorfont),
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
                bottom: 0,
                child: Container(
                  width: controller.indexPage.value == index
                      ? Get.width * 0.20
                      : 0,
                  height: Get.height * 0.005,
                  color: const Color(0xff33B5E5),
                ))
          ],
        );
      },
    );
  }
}
