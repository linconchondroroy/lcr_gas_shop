import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lcr_gas_shop/feature/screen/user/controller/home_controller/item_controller.dart';

class ItemView extends GetView<ItemController> {
  const ItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(()=>controller.data[controller.selectIn.value]),
      bottomNavigationBar: Obx(()=>NavigationBar(
          selectedIndex:controller.selectIn.value,//0
          indicatorColor: Colors.red,
          onDestinationSelected:(index){
            controller.selectIn.value = index;
          },
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: "home"),
            NavigationDestination(icon: Icon(Icons.home), label: "home"),
            NavigationDestination(icon: Icon(Icons.home), label: "home"),
            NavigationDestination(icon: Icon(Icons.home), label: "home"),
          ])),
    );
  }
}
