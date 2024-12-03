import 'package:ecommerce/features/authentication/screens.onbording/signup.widgets/verify_email.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_string.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class Singnupfrom extends StatelessWidget {
  const Singnupfrom({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration:  InputDecoration(
                    labelText: TTexts.firstName,
                    labelStyle: TextStyle(color: dark?TColors.white:TColors.black),
                    prefixIcon: const Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: TSizes.spaceBtwInputField),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: TTexts.lastName,
                    labelStyle: TextStyle(color: dark?TColors.white:TColors.black),
                    prefixIcon: const Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: TSizes.spaceBtwSections),
    
          // Username
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: TTexts.username,
              labelStyle: TextStyle(color: dark?TColors.white:TColors.black),
              prefixIcon: const Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwSections),
    
          // Email
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: TTexts.email,
              labelStyle: TextStyle(color: dark?TColors.white:TColors.black),
              prefixIcon: const Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwSections),
    
          // Password
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: TTexts.password,
              labelStyle: TextStyle(color: dark?TColors.white:TColors.black),
              prefixIcon: const Icon(Iconsax.password_check),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwSections),
    
          // Confirm Password
          TextFormField(
            expands: false,
            decoration:  InputDecoration(
              labelText: 'Confirm password',
              labelStyle: TextStyle(color: dark?TColors.white:TColors.black),
              prefixIcon: const Icon(Iconsax.password_check),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwSections),
    
          // Phone Number
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: TTexts.phonenumber,
              labelStyle: TextStyle(color: dark?TColors.white:TColors.black),
              prefixIcon: const Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwSections),
    
          // Terms & Conditions CHECKBOX
          Row(
            children: [
              // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
              Flexible(child: SizedBox(width: 20,height: 20,child: Checkbox(value: true, onChanged: (Value){}),)),
              const SizedBox(width: TSizes.spaceBtwItems,),
              Text.rich(TextSpan(children: [
                TextSpan(text: TTexts.iagreeto, style: Theme.of(context).textTheme.bodySmall),
                TextSpan(text: TTexts.privacypolicy ,style: Theme.of(context).textTheme.bodyMedium!.apply(color: dark?TColors.white:TColors.primary,decoration: TextDecoration.underline,
                decorationColor: dark?TColors.white:TColors.primary
                )),
                TextSpan(text: 'and',style: Theme.of(context).textTheme.bodySmall),
                TextSpan(text: TTexts.tremsofuse,style: Theme.of(context).textTheme.bodyMedium!.apply(color: dark?TColors.white:TColors.primary,decoration: TextDecoration.underline,
                decorationColor: dark?TColors.white:TColors.primary
                )),
    
    
              ])),
              const SizedBox(width: TSizes.spaceBtwItems),
            ],
          ),
    
          // Signup Button
          const SizedBox(height: TSizes.spaceBtwSections),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                 Get.to(()=>const VerifyEmailScreen());
              },
              child: Text(TTexts.createaccount),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputField),
    
          // Divider
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Divider(
                  color: dark ? TColors.darkGrey : TColors.grey,
                  thickness: 0.5,
                  indent: 60,
                  endIndent: 5,
                ),
              ),
              Text(
                TTexts.orsigninwith.toUpperCase(),
                style: Theme.of(context).textTheme.labelMedium,
              ),
              Flexible(
                child: Divider(
                  color: dark ? TColors.darkGrey : TColors.grey,
                  thickness: 0.5,
                  indent: 5,
                  endIndent: 60,
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwSections,)
              
               
            ],
            
          )
        ],
        
      ),
      
      
    );
    
  }
}