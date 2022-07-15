import 'package:get/get.dart';
import 'package:mockva_rest/app/modules/history/history_controller.dart';
import 'package:mockva_rest/app/modules/home/home_controller.dart';
import 'package:mockva_rest/app/modules/main/main_controller.dart';
import 'package:mockva_rest/app/modules/transfer/transfer_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    // Get.lazyPut(() => MainControllers(), fenix: true);
    // Get.lazyPut(() => HomeController(), fenix: true);
    // Get.lazyPut(() => TransferController(), fenix: true);
    // Get.lazyPut(() => HistoryController(), fenix: true);

    Get.put<MainControllers>(MainControllers());
    Get.put<HomeController>(HomeController());
    Get.put<TransferController>(TransferController());
    Get.put<HistoryController>(HistoryController());
  }
}
