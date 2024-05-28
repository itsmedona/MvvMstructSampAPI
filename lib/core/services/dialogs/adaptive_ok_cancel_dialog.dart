

import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../constants/colors.dart';

/// adaptive dialog for showing inbuild action sheets in android or ios platform
adaptiveOkCancelDialog({
  required Function() onOk,
  Function()? onCancel,
  String? title,
  String? message,
  String? cancelLabel,
  String? okLabel,
  bool isDismissible = true,
}) async {
  final result = await showOkCancelAlertDialog(
    context: Get.context!,
    title: title,
    message: message,
    cancelLabel: cancelLabel,
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

  if (result == OkCancelResult.ok) onOk();
  if (result == OkCancelResult.cancel) if (onCancel != null) onCancel();
}
