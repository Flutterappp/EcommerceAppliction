import 'package:ecommerce/common/style/spacing_styles.dart';
import 'package:ecommerce/features/authentication/screens.onbording/login/login_from.dart';
import 'package:ecommerce/features/authentication/screens.onbording/login/login_header.dart';
import 'package:ecommerce/features/authentication/screens.onbording/login/loginfooter.dart';
import 'package:ecommerce/utils/constants/colors.dart';

import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../../../utils/constants/text_string.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
      padding: TSpacingStyle.paddingWithAppBarHight,
      child: Column(children: [
        ///Logo, Title, Sub-Title,
        Loginheader(dark: dark),

        ///Form
        const Loginfrom(),

        ///Divider
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
                child: Divider(
              color: dark ? TColors.darkGrey : TColors.grey,
              thickness: 0.5,
              indent: 60,
              endIndent: 5,
            )),
            Text(
              TTexts.orsigninwith.capitalize!,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            Flexible(
                child: Divider(
              color: dark ? TColors.darkGrey : TColors.grey,
              thickness: 0.5,
              indent: 5,
              endIndent: 60,
            )),
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwSections,
        ),

        //Footter
        const Loginfooter()
      ]),
    )));
  }
}
