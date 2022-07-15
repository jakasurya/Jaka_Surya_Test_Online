import 'package:get/get.dart';
import 'package:mockva_rest/app/modules/login/login_controllers.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginControllers(), fenix: true);
  }
}
