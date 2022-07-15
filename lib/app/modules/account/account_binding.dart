import 'package:get/get.dart';
import 'package:mockva_rest/app/modules/account/account_controller.dart';

class AccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AccountController>(
      AccountController.new,
    );
  }
}
