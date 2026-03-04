import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lcr_gas_shop/app/app_color.dart';
import 'package:lcr_gas_shop/common/common_next_button.dart';
import 'package:lcr_gas_shop/common/common_number_button.dart';
import 'package:lcr_gas_shop/common/common_text_form_field.dart';
import 'package:lcr_gas_shop/feature/screen/user/controller/Authentication_controller/sign_up_controller/sign_up_two_controller.dart';

class SignUpTwo extends GetView<SignUpTwoController> {
  const SignUpTwo({super.key});

  @override
  Widget build(BuildContext context) {
    const Color primaryColor = Color(0xff2F80ED);
    const Color fieldColor = Color(0xffE9F2F9);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),

                /// Top Bar
                Row(
                  children:  [
                    Icon(Icons.arrow_back),
                    Spacer(),
                    Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),
                  ],
                ),

                SizedBox(height: 50.h),

                Text(
                  "Sign Up to Join",
                  style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
                ),

                SizedBox(height: 25.h),

                /// First Name
                CommonTextFormField(
                  primaryColor: AppsColor.primaryColor,
                  fieldColor: fieldColor,
                  text: "First name",
                  icons: Icon(Icons.people_outline_rounded),
                ),
                SizedBox(height: 15.h),

                /// Last Name
                CommonTextFormField(
                  primaryColor: AppsColor.primaryColor,
                  fieldColor: fieldColor,
                  text: "Last Name",
                  icons: Icon(Icons.people_outline_rounded),
                ),
                SizedBox(height: 15.h),

                /// Phone Row
                CommonNumberButton(),
                SizedBox(height: 15.h),

                /// Password
                CommonTextFormField(
                  primaryColor: AppsColor.primaryColor,
                  fieldColor: fieldColor,
                  text: "Password",
                  icons: Icon(Icons.lock),
                ),

                SizedBox(height: 15.h),

                /// Confirm Password
                CommonTextFormField(
                  primaryColor: AppsColor.primaryColor,
                  fieldColor: fieldColor,
                  text: "Confirm Password",
                  icons: Icon(Icons.lock),
                ),

                SizedBox(height: 25.h),

                /// Button
                CommonNextButton(call: () {
                  controller.moveToNextPage();
                }, text: 'Sign Up'),

                SizedBox(height: 30.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}