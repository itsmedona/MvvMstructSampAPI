import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api_may27/main.dart';
import '../../../core/api/network_manager.dart';
import '../../../core/api/urls.dart';
import '../../../core/constants/credentials.dart';
import '../../../core/services/dialogs/adaptive_ok_dialog.dart';
import '../../../core/services/getx/storage_services.dart';


class AuthController extends GetxController {
  //for login screen
  RxBool isLoading = false.obs;
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  autoLogin() async {
    ///automatically login from background
  }

  login() async {
    final result = await NetWorkManager.shared()
        .request(url: ApiUrls.BASE_URL + ApiUrls.LOGIN_URL, data: {
      'username': usernameController.text,
      'password': passwordController.text,
    });

    if (result.isLeft) {
      adaptiveOkDialog(message: result.left.message);
    } else {
      final data = result.right['data'];

      ///store locally and also set the value as global
      token = await StorageServices().write("token", data['token']);

      Get.off(() => HomeScreen());
    }
  }
}
