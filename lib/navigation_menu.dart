import 'package:ecommerce/features/authentication/screens.onbording/home/home.dart';
import 'package:ecommerce/features/personalization/screens/settings/settings.dart';
import 'package:ecommerce/features/shop/wishlist/wishlist.dart';
import 'package:ecommerce/features/store/store.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = THelperFunction.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        ()=> NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index)=>controller.selectedIndex.value=index,
          backgroundColor: darkMode?TColors.black:Colors.white,
          indicatorColor: darkMode?TColors.white.withOpacity(0.1):Colors.black.withOpacity(0.1),
        
          destinations: const [
          NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
         NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
          NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
          NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
        ]
        ),
      ),
      body: Obx(()=> controller.screen[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;
  final screen =[const HomeScreen(),const StoreScreen(),const FavouriteScreen(),const SettingScreen()];
}