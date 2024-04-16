import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/custom_shape/container/primary_header_contaner.dart';
import 'package:ecommerce/common/widgets/layouts/setting_menu_tile.dart';
import 'package:ecommerce/common/widgets/layouts/user_profile_tile.dart';
import 'package:ecommerce/common/widgets/text/section_heading.dart';
import 'package:ecommerce/features/authentication/screens.onbording/cart/cart.dart';
import 'package:ecommerce/features/authentication/screens.onbording/order/order.dart';
import 'package:ecommerce/features/personalization/screens/profile/profile.dart';
import 'package:ecommerce/features/personalization/screens/settings/address.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Header
            TPrimaryHeaderContaner(
                child: Column(
              children: [
                TAppBar(
                  title: Text('Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: TColors.white)),
                ),

                //User Profile Card
                   TUserProfileTile(onPressed: () {  
                    Get.to(() => const ProfileScreen());
                   },),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
              ],
            )),
            //Body
             Padding(padding: const EdgeInsets.all(TSizes.defultSpace),
            child: Column(
              children: [
                //Account Setting
                const TSectionHeading(tital: 'Account Setting',showActionButton: false,),
                const SizedBox(height: TSizes.spaceBtwSections,),

                TSettingMenuTile(icon: Iconsax.safe_home, title: 'My Addresses', subTitle: 'Set shopping delivery address',onTap: () => Get.to(() => const UserAddressScreen()),),
                TSettingMenuTile(icon: Iconsax.shopping_cart, title: 'My Cart', subTitle: 'Add, remove product and move to checkout',onTap: ()=> Get.to(const CartScreen()),),
                TSettingMenuTile(icon: Iconsax.bag_tick, title: 'My Order', subTitle: 'In-progress and Completed Order',onTap: ()=> Get.to(()=> const OrderScreen()),),
                TSettingMenuTile(icon: Iconsax.bank, title: 'Bank Account', subTitle: 'Withdraw balance to registered banck account ',onTap: (){},),
                TSettingMenuTile(icon: Iconsax.discount_shape, title: 'My Coupons', subTitle: 'List of all the discount coupons',onTap: (){},),
                TSettingMenuTile(icon: Iconsax.notification, title: 'Notfications', subTitle: 'Set any kind of notification message',onTap: (){},),
                TSettingMenuTile(icon: Iconsax.security_card, title: 'Account Privacy', subTitle: 'Manage data usage and connected accounts',onTap: (){},),
                //App Settings
                const SizedBox(height: TSizes.spaceBtwSections,),
                const TSectionHeading(tital: 'App Settings', showActionButton: false,),
                const SizedBox(height: TSizes.spaceBtwItems,),
                 const TSettingMenuTile(icon: Iconsax.document_upload, title: 'Load Data', subTitle: 'Upload Data to Your Cloud Firebase'),
                 TSettingMenuTile(icon: Iconsax.location, title: 'Geolocation', subTitle: 'Set recommendation based on location',trailing: Switch(value: true, onChanged: (value){})),
                 TSettingMenuTile(icon: Iconsax.security_user, title: 'Safe Mode', subTitle: 'Search result is safe for all ages',trailing: Switch(value: false, onChanged: (value){})),
                 TSettingMenuTile(icon: Iconsax.image, title: 'HD Image Quality', subTitle: 'Set image quality to be seen',trailing: Switch(value: false, onChanged: (value){}),),
                 TSettingMenuTile(icon: Iconsax.cloud_lightning, title: 'Light and DarkMode', subTitle: 'Set Your app thime',trailing: Switch(value: false, onChanged: (value){}),),
                
                //Logout Button
                const SizedBox(height: TSizes.spaceBtwSections,),
                SizedBox(
                  width: double.infinity,
                 child: OutlinedButton(onPressed: (){}, child: const Text('Logout')),

                ),
                const SizedBox(height: TSizes.spaceBtwSections*2.5,)

                

              ],
            ),
            )
          ],
        ),
      ),
    );
  }
}


