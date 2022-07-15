import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mockva_rest/app/modules/transfer/transfer_controller.dart';
import 'package:mockva_rest/pages/transfer/widgets/textfield_transfer.dart';

class TransferPage extends GetView<TransferController> {
  const TransferPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.onInit();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Transfer',
          style: TextStyle(
              color: Colors.black, fontSize: (Get.width + Get.height) * 0.018),
        ),
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
                const Text('Account Destination'),
                TextFieldTransfer(
                    hint: 'Account Destination',
                    ctrl: controller.destinationCTRL),
              ],
            ),
            SizedBox(height: Get.height * 0.05),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('Amount'),
                TextFieldTransfer(hint: 'Amount', ctrl: controller.amountCTRL),
                SizedBox(height: Get.height * 0.08),
                Center(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.grey),
                      onPressed: () {
                        controller.process();
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: Get.width * 0.08,
                            vertical: Get.height * 0.01),
                        child: Text(
                          'Transfer',
                          style: TextStyle(
                              fontSize: (Get.width + Get.height) * 0.020),
                        ),
                      )),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
