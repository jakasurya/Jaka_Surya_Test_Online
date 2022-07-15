import 'package:get/get.dart';
import 'package:mockva_rest/app/modules/transfer/transfer_controller.dart';

class TransferBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TransferController(), fenix: true);
  }
}
