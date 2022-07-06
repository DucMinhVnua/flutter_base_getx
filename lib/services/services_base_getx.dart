import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BaseGetx {
  /* ====== chuyển hướng có animation */
  // Custom GetPage
  GetPage GetPageCustom(
      {required String routeName,
      required Widget Function() page,
      Transition transition = Transition.fadeIn}) {
    return GetPage(name: routeName, page: page, transition: transition);
  }

  // chuyển hướng theo routesName
  void navigateGetx({required String routeName, dynamic? arguments}) {
    Get.toNamed(routeName, arguments: arguments);
  }

  /* ====== Lấy dữ liệu arguments */
  dynamic getArguments() {
    return Get.arguments;
  }

  /* ====== go back */
  void goBack({Object? result}) {
    Get.back(result: result);
  }

  /* ====== delete previous route and routes*/

  void navigateGetxOff({required String routeName, dynamic? arguments}) {
    Get.offNamed(routeName, arguments: arguments);
  }

  void navigateGetxOffAll({required String routeName, dynamic? arguments}) {
    Get.offAllNamed(routeName, arguments: arguments);
  }

  /* ====== snackbar */
  void snackbar(
      {required String title,
      required String message,
      Color? colorText = Colors.white,
      Widget? icon,
      bool isDismissible = true,
      Duration duration = const Duration(seconds: 2),
      Duration animationDuration = const Duration(seconds: 1),
      Color? backgroundColor = Colors.black,
      SnackPosition? direction = SnackPosition.TOP,
      Curve? animation}) {
    Get.snackbar(
      title,
      message,
      colorText: colorText,
      duration: duration,
      animationDuration: animationDuration,
      icon: icon,
      backgroundColor: backgroundColor!.withOpacity(0.3),
      snackPosition: direction,
      forwardAnimationCurve: animation,
    );
  }

  /* ====== dialog */
  void dialog(
      {required String title,
      TextStyle? titleStyle,
      Widget? content,
      String? textCancel,
      String? textConfirm,
      Color? backgroundColor,
      Color? cancelTextColor,
      Color? confirmTextColor,
      Color? buttonColor,
      Widget? customCancel,
      Widget? customConfirm,
      VoidCallback? onCancel,
      VoidCallback? onConfirm,
      double radius = 10.0}) {
    Get.defaultDialog(
        title: title,
        titleStyle: titleStyle,
        content: content,
        textCancel: textCancel,
        textConfirm: textConfirm,
        backgroundColor: backgroundColor,
        cancel: customCancel,
        confirm: customConfirm,
        onCancel: onCancel,
        onConfirm: onConfirm,
        cancelTextColor: cancelTextColor,
        confirmTextColor: confirmTextColor,
        buttonColor: buttonColor,
        radius: radius);
  }
}
