import 'package:get/get.dart';
import 'package:lcr_gas_shop/feature/screen/user/controller/splash_one_contorller.dart';

class SplsshBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(SplashOneContorller());
  }

}