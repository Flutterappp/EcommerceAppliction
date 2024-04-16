import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/features/authentication/screens.onbording/home/widgets/products.cart/cart_menu_icon.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_string.dart';
import 'package:ecommerce/utils/constants/text_string.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class THomeAppbar extends StatelessWidget {
  const THomeAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return TAppBar(
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Logo
          Image(
            height: 50,
            image: AssetImage(
                dark ? TImages.darkAppLogo : TImages.lightAppLogo),
                 width: 50, // Adjust the width of the logo as neede
                ),
          const SizedBox(width: 8), // Adjust the space between logo and text as needed
          // Text and Icon
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [ 
              const SizedBox(width: 8), // Adjust the space between icon and text as needed
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    TTexts.homeAppBarTital,
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium!
                        .apply(color: TColors.grey),
                  ),
                  Text(
                    TTexts.homeAppBarSubTital,
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: TColors.white),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      actions:  [
        TCartCountericon(onPressed: () {}, iconColor: TColors.white,)
      ],
    );
  }
}
