import 'package:get/get.dart';
import 'package:lcr_gas_shop/app/app_pages/app_pages.dart';

class AccountViewController extends GetxController {

  void moveToAccountProfile(){
    Get.toNamed(AppPages.accountProfileView);
  }

}