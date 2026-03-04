import 'package:get/get.dart';
import 'package:lcr_gas_shop/app/app_pages/app_pages.dart';

class SplashOneContorller extends GetxController{
  Future<void>MoveToNextPage()async{
    await Future.delayed(Duration(seconds: 0));
    Get.toNamed(AppPages.SplashTwo);
  }
  void onReady(){
    MoveToNextPage();
    super.onReady();
  }
}