import 'package:get/get.dart';
import 'package:lcr_gas_shop/app/app_pages/app_pages.dart';

class SignUpControllerOne extends GetxController{
  void moveToNextPage(){
    Get.toNamed(AppPages.singUpTwo);
  }
}