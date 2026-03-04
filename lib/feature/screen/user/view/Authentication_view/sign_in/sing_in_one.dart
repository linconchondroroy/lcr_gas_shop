
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lcr_gas_shop/common/common_next_button.dart';
import 'package:lcr_gas_shop/common/common_text_form.dart';
import 'package:lcr_gas_shop/feature/screen/user/controller/Authentication_controller/sign_in_controller/sing_in_one_controller.dart';

class SingInOne extends GetView<SingInOneController> {
  const SingInOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 100),

            /// Title
            const Text(
              "What’s your number?",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            /// Subtitle
            const Text(
              "We’ll check if you have an account",
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 30),

            /// Phone Input Row
            CommonNumberButton(),
            const Spacer(),
            /// Continue Button
            CommonNextButton(call: (){
              controller.moveToNextPage();
            }, text: "Continue"),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
