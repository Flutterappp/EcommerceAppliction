import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/text/section_heading.dart';
import 'package:ecommerce/common/widgets/text/t_circular_image.dart';
import 'package:ecommerce/features/personalization/screens/profile/widget/profile_menu.dart';
import 'package:ecommerce/utils/constants/image_string.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),
      //Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defultSpace),
          child: Column(
            children: [
              //Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TCircularImage(
                      image: TImages.user,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text('Change Profile Picture'))
                  ],
                ),
              ),
              //Detale
              const SizedBox(height: TSizes.spaceBtwItems/2,),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems,),
              const TSectionHeading(tital: 'Profile Information',showActionButton: false,),
              const SizedBox(height: TSizes.spaceBtwItems,),
              //Heading Profile information
              TprofileMenu(onPressed: (){}, title: 'Name', value: 'Arpit Miahra'),
              TprofileMenu(onPressed: (){}, title: 'User Name', value: 'AKM'),
              const SizedBox(height: TSizes.spaceBtwItems,),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems,),

              //Heading Personal Info
              const TSectionHeading(tital: 'Personal Information',showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems,),


              TprofileMenu(onPressed: (){}, title: 'User ID', value: '420',icon: Iconsax.copy,),
              TprofileMenu(onPressed: (){}, title: 'E-mail', value: 'app_star'),
              TprofileMenu(onPressed: (){}, title: 'Phone Number', value: '9132173314'),
              TprofileMenu(onPressed: (){}, title: 'Gender', value: 'Male'),
              TprofileMenu(onPressed: (){}, title: 'DOB', value: '4 April 2024'),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems,),
              Center(
                child: TextButton(onPressed: (){}, child: const Text('Close Account',style: TextStyle(color: Colors.red),)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
