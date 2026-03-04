import 'package:get/get.dart';
import 'package:lcr_gas_shop/feature/screen/user/controller/welcom_screen_controller/splash_one_contorller.dart';
import 'package:lcr_gas_shop/feature/screen/user/controller/welcom_screen_controller/splash_three_contorller.dart';
import 'package:lcr_gas_shop/feature/screen/user/controller/welcom_screen_controller/splash_two_contorller.dart';

class SplashBindings extends Bindings{
  @override
  void dependencies () {
    Get.put(SplashOneContorller());
    Get.put(SplashTwoController());
    Get.put(SplashThreeController());

  }
}