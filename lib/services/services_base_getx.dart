import 'package:get/get.dart';

class UtilsGeBaseGetxtx {
  // chuyển tab
  void navigateGetx({required String routeName, dynamic? arguments}) {
    Get.toNamed(routeName, arguments: arguments);

    //  remove all previous routes
    // Get.offAllNamed('/home');
  }

  // setup routes

  //
}
