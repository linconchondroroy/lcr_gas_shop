import 'package:get/get.dart';
import 'package:lcr_gas_shop/feature/screen/user/view/Authentication_view/sign_up/sign_up_two.dart';
import 'package:lcr_gas_shop/feature/screen/user/view/Authentication_view/sign_up/sign_up_view.dart';
import 'package:lcr_gas_shop/feature/screen/user/view/welcome_screen/splash_three.dart';
import 'package:lcr_gas_shop/feature/screen/user/view/welcome_screen/splash_two.dart';

class ItemController extends GetxController{
    RxInt selectIn = 0.obs;

    final List data = [
      SignUpTwo(),
      SignUpViewOne(),
      SplashThree(),
      SplashTwo()
    ];

}