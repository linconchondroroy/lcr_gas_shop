import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lcr_gas_shop/app/app_color.dart';
import 'package:lcr_gas_shop/common/common_next_button.dart';
import 'package:lcr_gas_shop/common/common_text_form_field.dart';
import 'package:lcr_gas_shop/feature/screen/user/controller/Authentication_controller/sign_up_controller/sing_up_four_controller.dart';

class SingUpFour extends GetView<SignUpFourController> {
  const SingUpFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F6F8),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(Icons.arrow_back, color: Colors.black),
        centerTitle: true,
        title: const Text(
          "Fill out your Profile",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            /// Profile Image
            Stack(
              children: [
                const CircleAvatar(
                  radius: 55,
                  backgroundColor: Color(0xffE0E5EC),
                  child: Icon(
                    Icons.person,
                    size: 50,
                    color: Colors.grey,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(
                      Icons.image,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                )
              ],
            ),

            const SizedBox(height: 10),
            const Text(
              "Upload Profile Picture",
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w500,
              ),
            ),

            const SizedBox(height: 30),

            /// Gender Dropdown
            CommonTextFormField(primaryColor: AppsColor.primaryColor,
                text: "Gender",
                icons: Icon(Icons.arrow_drop_down)),

            const SizedBox(height: 15),

            /// Date of Birth
            CommonTextFormField(
                primaryColor: AppsColor.primaryColor,
                text: "Date of Birth", icons: Icon(Icons.date_range)),

            const SizedBox(height: 15),

            /// Email
            CommonTextFormField(
                primaryColor: AppsColor.primaryColor,
                text: "Email", icons: Icon(Icons.email_outlined)),
            const SizedBox(height: 15),

            /// Address
            CommonTextFormField(primaryColor: AppsColor.primaryColor,
              text: "Address", icons: Icon(Icons.description),maxLines: 3,),

            const Spacer(),

            /// Continue Button
            CommonNextButton(call: (){
              controller.moveToNextPage();
            }, text: "Continue")
          ],
        ),
      ),
    );
  }

/// Custom TextField

}