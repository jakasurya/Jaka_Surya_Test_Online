import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mockva_rest/app/data/services/users_services.dart';
import 'package:mockva_rest/app/routes/pages_name.dart';

import '../../core/config/helper.dart';

class TransferController extends GetxController {
  TextEditingController destinationCTRL = TextEditingController();
  TextEditingController amountCTRL = TextEditingController();
  TextEditingController sourceCTRL = TextEditingController();
  TextEditingController sourceNameCTRL = TextEditingController();
  TextEditingController destinationNameCTRL = TextEditingController();

  @override
  void onInit() {
    destinationCTRL.text = '8282200409103259';
    amountCTRL.text = '20000';
    super.onInit();
  }

  final box = GetStorage();

  void process() {
    if (destinationCTRL.text.isNotEmpty && amountCTRL.text.isNotEmpty) {
      UsersServices().transferInquiry(getSession().accountId,
          destinationCTRL.text, double.parse(amountCTRL.text));
    }
  }

  void clearField() {
    destinationCTRL.clear();
    amountCTRL.clear();
  }

  void saveHistoryItem(dataRecive) {
    box.write('recive', dataRecive);
    Get.offAndToNamed(PagesName.transferRecive);
    clearField();
  }

  void fatchTransferConfirm() {
    sourceCTRL.text = getTransferData().accountSrcId;
    sourceNameCTRL.text = getTransferData().accountSrcName;
    destinationNameCTRL.text = getTransferData().accountDstName;
  }
}
