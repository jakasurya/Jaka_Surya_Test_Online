import 'package:get/get.dart';
import 'package:mockva_rest/app/modules/history/history_binding.dart';
import 'package:mockva_rest/app/modules/login/login_binding.dart';
import 'package:mockva_rest/app/modules/transfer/transfer_binding.dart';
import 'package:mockva_rest/app/routes/pages_name.dart';
import 'package:mockva_rest/pages/history/history_page.dart';
import 'package:mockva_rest/pages/login/loginpage.dart';
import 'package:mockva_rest/pages/main/main_page.dart';
import 'package:mockva_rest/pages/transfer/transfer_page.dart';
import 'package:mockva_rest/pages/transfer/transfer_recived_page.dart';
import 'package:mockva_rest/pages/transfer/transfer_verify_page.dart';

import '../../pages/home/homepage.dart';
import '../modules/main/main_binding.dart';

class AppRoutes {
  AppRoutes._();

  static final routes = [
    GetPage(
      name: PagesName.login,
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: PagesName.main,
      page: () => const MainPage(),
      binding: MainBinding(),
    ),
    GetPage(
      name: PagesName.home,
      page: () => const HomePage(),
      binding: MainBinding(),
    ),
    GetPage(
      name: PagesName.transfer,
      page: () => const TransferPage(),
      binding: MainBinding(),
    ),
    GetPage(
      name: PagesName.transferConfirm,
      page: () => const TransferVerify(),
      binding: TransferBinding(),
    ),
    GetPage(
      name: PagesName.transferRecive,
      page: () => const TransferRecived(),
      binding: MainBinding(),
    ),
    GetPage(
      name: PagesName.history,
      page: () => const HistoryPage(),
      binding: HistoryBinding(),
    ),
  ];
}
