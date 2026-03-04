import 'package:get/get.dart';
import 'package:lcr_gas_shop/app/app_pages/app_pages.dart';

class SplashTwoController extends GetxController{
  Future<void>MoveToNextPage()async{
    await Future.delayed(Duration(seconds: 5));
    Get.toNamed(AppPages.SplashThree);
  }
  void onReady(){
    MoveToNextPage();
    super.onReady();
  }
}