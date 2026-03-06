import 'package:get/get.dart';
import 'package:lcr_gas_shop/feature/screen/user/controller/cart_controllet/cart_controller.dart';

class CartBindings extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencie
    Get.put(CartController());
  }

}