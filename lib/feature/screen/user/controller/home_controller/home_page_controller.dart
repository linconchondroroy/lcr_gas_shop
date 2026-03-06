import 'package:get/get.dart';
import 'package:lcr_gas_shop/app/app_pages/app_pages.dart';

class HomePageController extends GetxController{
  void moveToDetailsPage(){
    Get.toNamed(AppPages.productDetails);
  }
}