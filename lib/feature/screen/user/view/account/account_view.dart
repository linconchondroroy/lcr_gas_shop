import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lcr_gas_shop/feature/screen/user/controller/account_controller/account_controller.dart';

class AccountView extends StatelessWidget {

  AccountView({super.key});

  final AccountViewController controller =
  Get.put(AccountViewController());

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),

        child: Column(
          children: [

            Row(
              children: [
                const CircleAvatar(),
                SizedBox(width: 10.w),
                const Text("Sourov Chandra"),
              ],
            ),

            SizedBox(height: 5.h),

            InkWell(
              onTap: controller.moveToAccountProfile,
              child: const ListTile(
                leading: Icon(Icons.person),
                title: Text("Account"),
                trailing: Icon(Icons.keyboard_double_arrow_right_outlined),
              ),
            ),

            SizedBox(height: 5.h),

            const ListTile(
              leading: Icon(Icons.book),
              title: Text("My order"),
              trailing: Icon(Icons.keyboard_double_arrow_right_outlined),
            ),

            SizedBox(height: 5.h),

            const ListTile(
              leading: Icon(Icons.balance),
              title: Text("Loyality Balance"),
              trailing: Icon(Icons.keyboard_double_arrow_right_outlined),
            ),

            SizedBox(height: 5.h),

            const ListTile(
              leading: Icon(Icons.person),
              title: Text("Monthy consumstion"),
              trailing: Icon(Icons.keyboard_double_arrow_right_outlined),
            ),

            SizedBox(height: 5.h),

            const ListTile(
              leading: Icon(Icons.settings),
              title: Text("setting"),
              trailing: Icon(Icons.keyboard_double_arrow_right_outlined),
            ),

            SizedBox(height: 5.h),

          ],
        ),
      ),
    );
  }
}