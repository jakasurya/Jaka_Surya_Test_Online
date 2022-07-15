import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mockva_rest/app/core/config/formatted.dart';
import 'package:mockva_rest/app/core/config/helper.dart';
import 'package:mockva_rest/app/modules/transfer/transfer_controller.dart';
import 'package:mockva_rest/pages/transfer/widgets/textvalue_custom.dart';

import 'widgets/labeltext_custom.dart';

class TransferRecived extends GetView<TransferController> {
  const TransferRecived({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: Get.height * 0.05,
          horizontal: Get.width * 0.1,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const LabelTextCustom(label: 'Account Source'),
            SizedBox(height: Get.height * 0.01),
            TextValueCustom(label: getRecive().accountSrcId),
            SizedBox(height: Get.height * 0.02),
            const LabelTextCustom(label: 'Account Source Name'),
            SizedBox(height: Get.height * 0.01),
            TextValueCustom(label: getTransferData().accountSrcName),
            SizedBox(height: Get.height * 0.02),
            const LabelTextCustom(label: 'Account Destination'),
            SizedBox(height: Get.height * 0.01),
            TextValueCustom(label: getRecive().accountDstId),
            SizedBox(height: Get.height * 0.02),
            const LabelTextCustom(label: 'Account Destination Name'),
            SizedBox(height: Get.height * 0.01),
            TextValueCustom(label: getTransferData().accountDstName),
            SizedBox(height: Get.height * 0.02),
            const LabelTextCustom(label: 'Amount'),
            SizedBox(height: Get.height * 0.01),
            TextValueCustom(label: setCurrency.format(getRecive().amount)),
            SizedBox(height: Get.height * 0.02),
            const LabelTextCustom(label: 'Reference Number'),
            SizedBox(height: Get.height * 0.01),
            TextValueCustom(label: getRecive().clientRef),
            SizedBox(height: Get.height * 0.02),
            const LabelTextCustom(label: 'Transaction Timestamp'),
            SizedBox(height: Get.height * 0.01),
            TextValueCustom(
                label: setDate
                    .format(DateTime.parse(getRecive().transactionTimestamp))),
            SizedBox(height: Get.height * 0.02),
            const LabelTextCustom(label: 'Status'),
            SizedBox(height: Get.height * 0.01),
            const TextValueCustom(label: 'SUCCESS'),
            SizedBox(height: Get.height * 0.02),
          ],
        ),
      )),
    );
  }
}
