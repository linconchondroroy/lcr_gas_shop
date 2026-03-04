import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lcr_gas_shop/app/app_color.dart';

class SplashTwo extends StatelessWidget {
  const SplashTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              "Skip",
              style: TextStyle(color: AppsColor.primaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
