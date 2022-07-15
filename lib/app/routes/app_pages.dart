import 'package:mockva_rest/app/routes/pages_name.dart';

import 'app_routes.dart';

class AppPages {
  AppPages._();
  static const String initial = PagesName.login;

  static final routes = [
    ...AppRoutes.routes,
  ];
}
