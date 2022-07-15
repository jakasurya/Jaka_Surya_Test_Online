import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextFieldHome extends StatelessWidget {
  const TextFieldHome({
    Key? key,
    required this.hint,
    required this.ctrl,
    this.edited,
  }) : super(key: key);
  final String hint;
  final TextEditingController ctrl;
  final bool? edited;

  @override
  Widget build(BuildContext context) {
    bool edt = edited ?? true;
    return Container(
      height: Get.height * 0.07,
      margin: const EdgeInsets.only(top: 10),
      padding: EdgeInsets.all(Get.width * 0.03),
      decoration: BoxDecoration(
        color: Color(edt ? 0xffF5F5F5 : 0xffF7F8F9),
        borderRadius: BorderRadius.circular(6),
        border:
            Border.all(color: Color(edt ? 0xff7F7F7F : 0xffDEE1E6), width: 3),
      ),
      child: Center(
        child: TextField(
          enabled: edt,
          controller: ctrl,
          decoration: InputDecoration.collapsed(
            hintText: hint,
          ),
          maxLines: 1,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(edt ? 0xff535353 : 0xff808A9E)),
        ),
      ),
    );
  }
}
