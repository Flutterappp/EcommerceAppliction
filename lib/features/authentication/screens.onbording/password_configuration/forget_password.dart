import 'package:ecommerce/features/authentication/screens.onbording/password_configuration/reset_password.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/text_string.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body:  Padding(padding: const EdgeInsets.all(TSizes.defultSpace),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Headings
          Text(TTexts.forgetpasswordTitle,style: Theme.of(context).textTheme.headlineMedium,),
          const SizedBox(height: TSizes.spaceBtwItems,),
          Text(TTexts.forgetpasswordSubTitle,style: Theme.of(context).textTheme.labelMedium?.copyWith(color: Colors.grey)),
          const SizedBox(height: TSizes.spaceBtwSections*2,),



          //TextField
          TextFormField(
            decoration: InputDecoration(labelText: TTexts.email,prefixIcon: const Icon(Iconsax.direct_right),labelStyle: TextStyle(color: dark?TColors.white:TColors.black)),

          ),
            const SizedBox(height: TSizes.spaceBtwSections,),


          //Submit Button
          SizedBox(width: double.infinity,child: ElevatedButton(onPressed: ()=>Get.off(()=> const ResetPassword()), child: Text(TTexts.aSubmitButton))),
          const SizedBox(height: TSizes.spaceBtwItems,),
           
        ],
      ),
      ),

    );
  }
}