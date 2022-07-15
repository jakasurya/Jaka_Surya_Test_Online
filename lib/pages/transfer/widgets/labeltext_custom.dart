import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LabelTextCustom extends StatelessWidget {
  const LabelTextCustom({Key? key, required this.label}) : super(key: key);

  final String label;
  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        fontSize: (Get.width + Get.height) * 0.014,
        fontWeight: FontWeight.bold,
        color: const Color(0xff808A9E),
      ),
    );
  }
}
