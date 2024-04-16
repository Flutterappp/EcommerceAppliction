import 'package:ecommerce/features/authentication/screens.onbording/login/login.dart';
import 'package:ecommerce/utils/constants/image_string.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_string.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [IconButton(onPressed: ()=>Get.back(), icon: const Icon(CupertinoIcons.clear))],
      ),
      body:  SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(TSizes.defultSpace),
        child: Column(
          children: [
            //Image
              Image(
                image:  const AssetImage(TImages.passwordresetemailsent),
                width: THelperFunction.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              //Title & subtitle
              Text(
               TTexts.changeYourPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
             
              const SizedBox(height: TSizes.spaceBtwSections),
              Text(
                TTexts.changeYourPasswordSubTitle,
                style: Theme.of(context).textTheme.labelLarge?.copyWith(color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              //Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => const LoginScreen());
                  },
                  child: Text(TTexts.aDone),
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwItems,),
              TextButton(
                     onPressed: () {},
                     child: Text(TTexts.resendemail.capitalize!)),
          ],
          
        ),
        ),
      ),
      
    );
  }
}