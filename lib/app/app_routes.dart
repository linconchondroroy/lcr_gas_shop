import 'package:get/get.dart';
import 'package:lcr_gas_shop/app/app_pages/app_pages.dart';
import 'package:lcr_gas_shop/feature/screen/user/bindings/account_bindings/account_bindings.dart';
import 'package:lcr_gas_shop/feature/screen/user/bindings/authentication_bindings/authentication_bindings.dart';
import 'package:lcr_gas_shop/feature/screen/user/bindings/cart_bindings/cart_bindings.dart';
import 'package:lcr_gas_shop/feature/screen/user/bindings/home_bindings/home_bindings.dart';
import 'package:lcr_gas_shop/feature/screen/user/bindings/order_bindings/order_bindings.dart';
import 'package:lcr_gas_shop/feature/screen/user/bindings/splash_bindings/splash_bindings.dart';
import 'package:lcr_gas_shop/feature/screen/user/view/Authentication_view/sign_in/sing_in_one.dart';
import 'package:lcr_gas_shop/feature/screen/user/view/Authentication_view/sign_in/sing_in_two.dart';
import 'package:lcr_gas_shop/feature/screen/user/view/Authentication_view/sign_up/sign_up_two.dart';
import 'package:lcr_gas_shop/feature/screen/user/view/Authentication_view/sign_up/sign_up_view.dart';
import 'package:lcr_gas_shop/feature/screen/user/view/Authentication_view/sign_up/sing_up_four.dart';
import 'package:lcr_gas_shop/feature/screen/user/view/Authentication_view/sign_up/sing_up_three.dart';
import 'package:lcr_gas_shop/feature/screen/user/view/account/acccount_profile.dart';
import 'package:lcr_gas_shop/feature/screen/user/view/account/account_view.dart';
import 'package:lcr_gas_shop/feature/screen/user/view/cart/cart_view.dart';
import 'package:lcr_gas_shop/feature/screen/user/view/home_screen/home_page_view.dart';
import 'package:lcr_gas_shop/feature/screen/user/view/home_screen/item_view/item_view.dart';
import 'package:lcr_gas_shop/feature/screen/user/view/order_view/order_view.dart';
import 'package:lcr_gas_shop/feature/screen/user/view/product_details/product_details_view.dart';
import 'package:lcr_gas_shop/feature/screen/user/view/welcome_screen/splash_one.dart';
import 'package:lcr_gas_shop/feature/screen/user/view/welcome_screen/splash_three.dart';
import 'package:lcr_gas_shop/feature/screen/user/view/welcome_screen/splash_two.dart';

class AppRoutes{
  static final Initial = AppPages.initialPages;
  static List<GetPage> routes = [
    GetPage(name: AppPages.initialPages, page: ()=> SplashOne(), binding: SplashBindings()),
    GetPage(name: AppPages.SplashTwo, page: ()=> SplashTwo(), binding: SplashBindings()),
    GetPage(name: AppPages.SplashThree, page: ()=> SplashThree(), binding: SplashBindings()),
    //SingUp
    GetPage(name: AppPages.singUpOne, page: ()=>SignUpViewOne (), binding: SigInBindings()),
    GetPage(name: AppPages.singUpTwo, page: ()=>SignUpTwo (), binding: SigInBindings()),
    GetPage(name: AppPages.singUpThree, page: ()=>SingUpThree(), binding: SigInBindings()),
    GetPage(name: AppPages.singUpFour, page: ()=> SingUpFour(), binding: SigInBindings()),
    //Sing In
    GetPage(name: AppPages.singInOne, page:()=> SingInOne(), binding: SigInBindings()),
    GetPage(name: AppPages.singInTwo, page:()=> SingInTwo(), binding: SigInBindings()),
    //Home Screen
    GetPage(name: AppPages.item, page:()=> ItemView(), binding: HomeBindings()),
    GetPage(name: AppPages.homePage, page: ()=> HomePageView(), binding: HomeBindings()),
    GetPage(name: AppPages.homePageTwo, page: ()=> HomePageView(), binding: HomeBindings()),

    //Product Details
    GetPage(name: AppPages.productDetails, page: ()=> ProductDetailsView(), binding: HomeBindings()),

    //Cart
    GetPage(name: AppPages.cartView, page: ()=> CartView(), binding: CartBindings()),

    //Order
    GetPage(name: AppPages.orderView, page: ()=> OrderView(), binding: OrderBindings()),

    //Account
    GetPage(name: AppPages.accountView, page: ()=> AccountView(), binding: AccountBindings()),
    GetPage(name: AppPages.accountProfileView, page: ()=> AccountProfile(), binding: AccountBindings()),
  ];
}