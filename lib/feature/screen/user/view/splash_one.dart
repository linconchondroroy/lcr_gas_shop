import 'package:flutter/material.dart';
import 'package:lcr_gas_shop/app/app_color.dart';

class SplashOne extends StatelessWidget {
  const SplashOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset("assets/images/logo/splash_logo_one.png")),
          SizedBox(height: 25),
          Column(
            children: [
              Text("LCR Shop", style: TextStyle(color: AppsColor.PrimaryColor, fontSize: 68, fontWeight: FontWeight.bold),)
            ],
          )
        ],
      ),
    );
  }
}
