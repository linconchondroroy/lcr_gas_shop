import 'package:get/get.dart';
import 'package:lcr_gas_shop/app/app_pages.dart';
import 'package:lcr_gas_shop/feature/screen/user/bindings/splash_bindings/splash_bindings.dart';
import 'package:lcr_gas_shop/feature/screen/user/view/splash_one.dart';

class AppRoutes{
  static final Initial = AppPages.SplashOne;
  static List<GetPage> routes = [
    GetPage(name: AppPages.SplashOne, page: ()=>SplashOne(), binding: SplsshBindings())
  ];
}