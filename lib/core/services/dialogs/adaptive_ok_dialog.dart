
import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/colors.dart';

/// adaptive dialog for showing inbuild action sheets in android or ios platform

Future<void> adaptiveOkDialog({
  Function()? onOk,
  String? title,
  String? message,
  String? okLabel,
  bool isDismissible = true,
}) async {
  final result = await showOkAlertDialog(
    context: Get.context!,
    title: title,
    message: message,
    okLabel: okLabel,
    barrierDismissible: isDismissible,
    builder: (context, child) => Theme(
      data: ThemeData(
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: kPrimaryColor,
          ),
        ),
        cupertinoOverrideTheme: const CupertinoThemeData(
          primaryColor: kPrimaryColor,
        ),
      ),
      child: child,
    ),
  );

  if (result == OkCancelResult.ok && onOk != null) onOk();
}
