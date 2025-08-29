import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ppkd_batch_3/Day_12/halaman.dart';
import 'package:ppkd_batch_3/Day_12/icon.dart';
import 'package:ppkd_batch_3/Day_12/switch.dart';
import 'package:ppkd_batch_3/Day_6/layout.dart';

class Bottom extends StatelessWidget {
  Bottom({super.key});
  static const id = "/bot";

  final NavigationController controller = Get.put(NavigationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop_add), label: 'Store'),
            NavigationDestination(icon: Icon(Iconsax.money), label: 'Report'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  final List<Widget> screens = [
    const Halaman(),
    Tugas12(),
    Tukar(),
    const Layout(),
  ];
}
