import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lcr_gas_shop/app/app_routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.Initial,
      getPages: AppRoutes.routes,
    );
  }
}
