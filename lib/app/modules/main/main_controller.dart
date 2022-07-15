import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mockva_rest/app/data/services/users_services.dart';
import 'package:mockva_rest/app/modules/history/history_controller.dart';
import 'package:mockva_rest/app/routes/pages_name.dart';
import 'package:mockva_rest/pages/account/account_page.dart';
import 'package:mockva_rest/pages/history/history_page.dart';
import 'package:mockva_rest/pages/home/homepage.dart';

import '../../../pages/main/widgets/navbottomitem_widget.dart';
import '../../../pages/transfer/transfer_page.dart';
import '../../core/config/helper.dart';

class MainControllers extends GetxController {
  final box = GetStorage();
  var indexPage = 0.obs;

  List<Widget> mainPageList = [
    const HomePage(),
    const TransferPage(),
    const HistoryPage(),
    const AccountPage(),
  ];
  List<Widget> navigationItem = [
    const NavigationBottomItem(
      icon: Icons.home,
      label: 'Home',
      index: 0,
    ),
    const NavigationBottomItem(
      icon: Icons.compare_arrows,
      label: 'Transer',
      index: 1,
    ),
    const NavigationBottomItem(
      icon: Icons.history,
      label: 'History',
      index: 2,
    ),
    const NavigationBottomItem(
      icon: Icons.settings,
      label: 'Account',
      index: 3,
    ),
  ];

  void setPage(index) {
    indexPage.value = index;
    switch (index) {
      case 2:
        UsersServices()
            .historyTransaction(getAccountDetail().id)
            .then((value) => Get.put(HistoryController()).fatchHistory(value));
        break;
      default:
    }
  }

  @override
  void onReady() {
    if (!loadSession()) Get.offAllNamed(PagesName.login);
    super.onReady();
  }
}
