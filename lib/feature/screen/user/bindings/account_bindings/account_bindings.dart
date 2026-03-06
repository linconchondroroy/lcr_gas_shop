import 'package:get/get.dart';
import 'package:lcr_gas_shop/feature/screen/user/controller/account_controller/account_controller.dart';

class AccountBindings extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(AccountViewController());
  }
}