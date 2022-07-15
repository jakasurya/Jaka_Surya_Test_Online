import 'package:get/get.dart';
import 'package:mockva_rest/app/modules/history/history_controller.dart';

class HistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HistoryController(), fenix: true);
  }
}
