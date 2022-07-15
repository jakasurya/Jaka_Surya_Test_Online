import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mockva_rest/app/core/config/helper.dart';
import 'package:mockva_rest/app/data/services/users_services.dart';
import 'package:mockva_rest/app/modules/login/login_controllers.dart';
import 'package:mockva_rest/app/routes/pages_name.dart';

import 'widgets/textfield_login.dart';

class LoginPage extends GetView<LoginControllers> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Mockva Mobile',
                    style: TextStyle(
                      fontSize: (Get.width + Get.height) * 0.028,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 100),
                  TextFieldLogin(
                    ctrl: controller.usernameCtrl,
                    hint: 'username',
                  ),
                  const SizedBox(height: 50),
                  TextFieldLogin(
                    ctrl: controller.passwordCtrl,
                    hint: 'password',
                  ),
                ],
              ),
              Positioned(
                bottom: 50,
                child: ElevatedButton(
                    onPressed: () {
                      popUp('Login . . .');
                      UsersServices()
                          .login(controller.usernameCtrl.text,
                              controller.passwordCtrl.text)
                          .then((value) {
                        if (loadSession()) Get.offAllNamed(PagesName.main);
                      });
                    },
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                      child: Text(
                        'Log in',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
