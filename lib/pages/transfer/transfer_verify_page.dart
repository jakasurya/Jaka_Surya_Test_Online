import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mockva_rest/app/data/services/users_services.dart';
import 'package:mockva_rest/app/modules/transfer/transfer_controller.dart';
import 'package:mockva_rest/pages/home/widgets/textfield_home.dart';

class TransferVerify extends GetView<TransferController> {
  const TransferVerify({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.fatchTransferConfirm();
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title: Text(
          'Transfer',
          style: TextStyle(
              color: Colors.black, fontSize: (Get.width + Get.height) * 0.018),
        ),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Get.width * 0.10, vertical: Get.height * 0.16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text('Account Source',
                          style: TextStyle(color: Color(0xff808A9E))),
                      TextFieldHome(
                          hint: 'Account Source',
                          edited: false,
                          ctrl: controller.sourceCTRL),
                    ],
                  ),
                  SizedBox(height: Get.height * 0.01),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text('Account Source Name',
                          style: TextStyle(color: Color(0xff808A9E))),
                      TextFieldHome(
                          hint: 'Account Source Name',
                          edited: false,
                          ctrl: controller.sourceNameCTRL),
                    ],
                  ),
                  SizedBox(height: Get.height * 0.01),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text('Account Destination',
                          style: TextStyle(color: Color(0xff808A9E))),
                      TextFieldHome(
                          hint: 'Account Destination',
                          edited: false,
                          ctrl: controller.destinationCTRL),
                    ],
                  ),
                  SizedBox(height: Get.height * 0.01),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text('Account Destination Name',
                          style: TextStyle(color: Color(0xff808A9E))),
                      TextFieldHome(
                        hint: 'Account Destination Name',
                        ctrl: controller.destinationNameCTRL,
                        edited: false,
                      ),
                    ],
                  ),
                  SizedBox(height: Get.height * 0.01),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text('Amount',
                          style: TextStyle(color: Color(0xff808A9E))),
                      TextFieldHome(
                        hint: 'Amount',
                        ctrl: controller.amountCTRL,
                        edited: false,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              bottom: Get.height * 0.03,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.grey),
                  onPressed: () {
                    UsersServices().transferConfirm();
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: Get.width * 0.04,
                        vertical: Get.height * 0.01),
                    child: Text('Confirm',
                        style: TextStyle(
                            fontSize: (Get.width + Get.height) * 0.020)),
                  )))
        ],
      ),
    );
  }
}
