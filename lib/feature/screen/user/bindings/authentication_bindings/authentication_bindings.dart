import 'package:get/get.dart';
import 'package:lcr_gas_shop/feature/screen/user/controller/Authentication_controller/sign_in_controller/sing_in_one_controller.dart';
import 'package:lcr_gas_shop/feature/screen/user/controller/Authentication_controller/sign_up_controller/sign_up_controller.dart';
import 'package:lcr_gas_shop/feature/screen/user/controller/Authentication_controller/sign_up_controller/sign_up_two_controller.dart';
import 'package:lcr_gas_shop/feature/screen/user/controller/Authentication_controller/sign_up_controller/sing_up_four_controller.dart';
import 'package:lcr_gas_shop/feature/screen/user/controller/Authentication_controller/sign_up_controller/sing_up_three_controller.dart';
import 'package:lcr_gas_shop/feature/screen/user/view/Authentication_view/sign_up/sing_up_four.dart';

import '../../controller/Authentication_controller/sign_in_controller/sing_in_two_controller.dart';

class SigInBindings extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(SignUpControllerOne());
    Get.put(SignUpTwoController());
    Get.put(SignUpThreeController());
    Get.put(SignUpFourController());
    Get.put(SingInOneController());

    // Sing In Bindings //
    Get.put(SingInOneController());
    Get.put(SingInTwoController());
  }
}