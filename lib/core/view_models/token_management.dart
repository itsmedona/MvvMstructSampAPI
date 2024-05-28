import 'dart:async';

import 'package:get/get.dart';

import '../../screens/auth/controllers/auth_controller.dart';
import '../../screens/login/login_screen.dart';
import '../services/dialogs/adaptive_ok_dialog.dart';
import '../services/getx/storage_services.dart';

//this function used for the time of token time out
//so the entire screen redirect to login screen

bool isLoginDialogShowing = false;
bool isLoginAutoInitiated = false;
Future<bool> tokenManagement() async {
  bool result = false;
  if (!isLoginAutoInitiated) {
    isLoginAutoInitiated = true;
    result = await Get.put(AuthController()).autoLogin();
    await Future.delayed(const Duration(seconds: 1));
    isLoginAutoInitiated = false;
  }
  return result;
}

forceLogin() {
  if (!isLoginDialogShowing && Get.currentRoute != "/LoginScreen") {
    adaptiveOkDialog(
      onOk: () {
        StorageServices().delete("token");
        StorageServices().delete("username");
        StorageServices().delete("password");
        Get.offAll(() => LoginScreen());

        isLoginDialogShowing = false;
      },
      title: "Login timeout!",
      message: "Please login to continue",
      okLabel: "Login",
    );
    isLoginDialogShowing = true;
  }
}
