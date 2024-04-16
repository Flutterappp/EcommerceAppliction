import 'package:ecommerce/features/authentication/screens.onbording/password_configuration/forget_password.dart';
import 'package:ecommerce/features/authentication/screens.onbording/signup.widgets/singup.dart';
import 'package:ecommerce/navigation_menu.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_string.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class Loginfrom extends StatelessWidget {
  const Loginfrom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunction.isDarkMode(context);
    return Form(
        child: Padding(
      padding:
          const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: const Icon(Iconsax.direct_right),
              labelText: TTexts.email,
              labelStyle: TextStyle(color: dark? TColors.light:TColors.dark),
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputField,
          ),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: const Icon(Iconsax.password_check),
              labelText: TTexts.password,
              labelStyle:  TextStyle(color: dark? TColors.light:TColors.dark),

              suffixIcon: const Icon(Iconsax.eye_slash),
              
              
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputField / 2,
          ),
          //Remember Me & forget Password
          //Remember me
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Checkbox(value: true, onChanged: (value) {}),
            Text(TTexts.rememberme),
            const SizedBox(
              width: TSizes.spaceBtwInputField,
            ),
            //Forget Password
    
            TextButton(
                onPressed: ()=>Get.to(()=> const ForgetPassword()), child: Text(TTexts.forgetpassword,)),
            const SizedBox(
              height: TSizes.spaceBtwInputField,
            ),
            const SizedBox(
              height: TSizes.spaceBtwInputField,
            ),
          ]),
          const SizedBox(
            height: TSizes.spaceBtwInputField,
          ),
    
          ///Sign In Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: ()=>Get.to(()=>const NavigationMenu()),
              child: Text(TTexts.signin),
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputField,
          ),
    
          ///Create Account Button
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: ()=> Get.to(()=>const SignupScreen()),
              child: Text(TTexts.createaccount),
            ),
          )
        ],
      ),
    ));
  }
}