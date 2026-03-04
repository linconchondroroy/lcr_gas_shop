import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lcr_gas_shop/app/app_color.dart';
import 'package:lcr_gas_shop/app/image_logo.dart';
import 'package:lcr_gas_shop/feature/screen/user/controller/welcom_screen_controller/splash_one_contorller.dart';

class SplashOne extends GetView<SplashOneContorller> {
  const SplashOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment:
        MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(AppImagesLogo.splashLogoOne,
              width: 200.w,
              height: 200.h,
            ),
          ),

          SizedBox(height: 25.h),
          Text(
            "LCR Shop",
            style: TextStyle(
              color: AppsColor.primaryColor,
              fontSize: 68.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}