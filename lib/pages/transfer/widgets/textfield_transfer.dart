import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class TextFieldTransfer extends StatelessWidget {
  const TextFieldTransfer({
    Key? key,
    required this.hint,
    required this.ctrl,
  }) : super(key: key);
  final String hint;
  final TextEditingController ctrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.07,
      margin: const EdgeInsets.only(top: 10),
      padding: EdgeInsets.all(Get.width * 0.03),
      decoration: BoxDecoration(
        color: const Color(0xffF5F5F5),
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: const Color(0xff7F7F7F), width: 3),
      ),
      child: Center(
        child: TextField(
          keyboardType: TextInputType.number,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          controller: ctrl,
          decoration: InputDecoration.collapsed(
            hintText: hint,
          ),
          maxLines: 1,
          style: const TextStyle(
              fontWeight: FontWeight.bold, color: Color(0xff535353)),
        ),
      ),
    );
  }
}
