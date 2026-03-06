import 'package:get/get.dart';
import 'package:lcr_gas_shop/feature/screen/user/controller/home_controller/home_page_controller.dart';
import 'package:lcr_gas_shop/feature/screen/user/controller/home_controller/item_controller.dart';

class HomeBindings extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(ItemController());
    Get.put(HomePageController());
  }

}