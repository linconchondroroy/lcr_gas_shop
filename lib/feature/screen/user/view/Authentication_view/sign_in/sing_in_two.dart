import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lcr_gas_shop/app/app_color.dart';
import 'package:lcr_gas_shop/common/common_next_button.dart';
import 'package:lcr_gas_shop/common/common_text_form_field.dart';
import 'package:lcr_gas_shop/feature/screen/user/controller/Authentication_controller/sign_in_controller/sing_in_two_controller.dart';

class SingInTwo extends GetView<SingInTwoController> {
  const SingInTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Sign In",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold),))),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50.h),
            Center(
              child: Text(
                "Enter your password",
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: 50.h),
            CommonTextFormField(
              primaryColor: AppsColor.primaryColor,
              text: "Password",
              icons: Icon(Icons.lock),
            ),
            SizedBox(height: 5.h,),
            Text(
              "Forgot Password ? ",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            Spacer(),
            CommonNextButton(call: () {
              controller.moveToNextPage();
            }, text: "Sign IN"),
            SizedBox(height: 50.h,),
          ],
        ),
      ),
    );
  }
}