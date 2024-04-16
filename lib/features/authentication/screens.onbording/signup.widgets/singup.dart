import 'package:ecommerce/features/authentication/screens.onbording/login/loginfooter.dart';
import 'package:ecommerce/features/authentication/screens.onbording/signup.widgets/signup_from.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_string.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // Title
            children: [
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              // Form
              Singnupfrom(dark: dark),
              const SizedBox(width: TSizes.spaceBtwSections,),
              const Loginfooter()
            ],
          ),
        ),
      ),
    );
  }
}


