import 'package:get/get.dart';
import 'package:lcr_gas_shop/feature/screen/user/view/account/account_view.dart';
import 'package:lcr_gas_shop/feature/screen/user/view/cart/cart_view.dart';
import 'package:lcr_gas_shop/feature/screen/user/view/home_screen/home_page_view.dart';
import 'package:lcr_gas_shop/feature/screen/user/view/order_view/order_view.dart';
import 'package:lcr_gas_shop/feature/screen/user/view/welcome_screen/splash_two.dart';

class ItemController extends GetxController{
    RxInt selectIn = 0.obs;

    final List data = [
      HomePageView(),
      CartView(),
      OrderView(),
      AccountView(),
    ];

}