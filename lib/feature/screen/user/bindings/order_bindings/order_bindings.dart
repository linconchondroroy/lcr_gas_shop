import 'package:get/get.dart';
import 'package:lcr_gas_shop/feature/screen/user/controller/order_controller/order_controller.dart';

class OrderBindings extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(OrderController());
  }

}