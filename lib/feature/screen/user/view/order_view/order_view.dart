import 'package:flutter/material.dart';
import 'package:lcr_gas_shop/app/image_logo.dart';

class OrderView extends StatelessWidget {
  const OrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text("Order"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // Illustration Image
            Image.asset(
              AppImagesLogo.order,
              height: 250,
            ),

            const SizedBox(height: 30),

            // Text
            const Text(
              "You have no order item",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black54,
              ),
            ),

          ],
        ),
      ),
    );
  }
}