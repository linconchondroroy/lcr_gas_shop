import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lcr_gas_shop/app/app_color.dart';
import 'package:lcr_gas_shop/app/image_logo.dart';
import 'package:lcr_gas_shop/feature/screen/user/controller/welcom_screen_controller/splash_three_contorller.dart';

class SplashThree extends GetView<SplashThreeController> {
  const SplashThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppsColor.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          child: Column(
            children: [

              Align(
                alignment: Alignment.topRight,
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 18,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: AppsColor.primaryColor,
                          width: 1.2,
                        ),
                      ),
                      child: Text(
                        "Skip",
                        style: TextStyle(
                          color: AppsColor.primaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              const Spacer(),

              Image.asset(
                AppImagesLogo.getStarted,
                height: MediaQuery.of(context).size.height * .35,
                fit: BoxFit.contain,
              ),

              const Spacer(),

              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => const LocationPopup(),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppsColor.primaryColor,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    "GET STARTED",
                    style: TextStyle(
                      color: AppsColor.backgroundColor,
                      fontSize: 16,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}

class LocationPopup extends GetView<SplashThreeController> {
  const LocationPopup({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [

            const Text(
              "Allow “App” to use your location?",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "Your precise location is used to show your position on the map, get directions, estimate travel times and improve search results",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 13),
            ),

            const SizedBox(height: 15),

            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                AppImagesLogo.mapView,
                height: 120,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 15),

            const Divider(height: 1),

            TextButton(
              onPressed: () {
                controller.moveToSignupScreenOne();

              },
              child: Text(
                "Allow Once",
                style: TextStyle(color: AppsColor.primaryColor),
              ),
            ),

            const Divider(height: 1),

            TextButton(
              onPressed: () {
                controller.moveToSignupScreenOne();
              },
              child: Text(
                "Allow While Using the App",
                style: TextStyle(color: AppsColor.primaryColor),
              ),
            ),

            const Divider(height: 1),

            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                "Don’t Allow",
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        ),
      ),
    );
  }
}