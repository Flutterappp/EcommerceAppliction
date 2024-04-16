import 'package:ecommerce/common/widgets/success_screen/success_screen.dart';
import 'package:ecommerce/features/authentication/screens.onbording/login/login.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_string.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_string.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear)),
        ],
      ),
      body: SingleChildScrollView(
        //Padding to Given  Defult Equal Space on all sides in all screen
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defultSpace),
          child: Column(
            children: [
              //Image
              Image(
                image: const AssetImage(TImages.verifyEmailAddress),
                width: THelperFunction.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              //Title & subtitle
              Text(
                TTexts.confirmemailTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(
                "support@appstar.com",
                style: Theme.of(context).textTheme.labelLarge!.apply(color: dark?TColors.white :TColors.black),
                textAlign: TextAlign.center,
                
              ), //in futcher this text change automatically
              const SizedBox(height: TSizes.spaceBtwSections),
              Text(
                TTexts.confirmemailSubTitle,
                style: Theme.of(context).textTheme.labelLarge?.copyWith(color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              //Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() =>  SuccessScreen(image: TImages.accountcreate, title: TTexts.youraccountcreateTitle, subtitle: TTexts.changeYourPasswordSubTitle, onPressed: ()=>Get.to(const LoginScreen()),));
                  },
                  child: Text(TTexts.continueButton),
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
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
