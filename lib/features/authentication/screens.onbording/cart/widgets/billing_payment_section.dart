import 'package:ecommerce/common/style/rounded_container.dart';
import 'package:ecommerce/common/widgets/text/section_heading.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_string.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TBillingPaymentSection extends StatelessWidget {
  
  const TBillingPaymentSection ({super.key});

  @override
  Widget build(BuildContext context) {

    final dark = THelperFunction.isDarkMode(context);
    return  Column(
      children: [
        TSectionHeading(tital: 'Payment Method',buttonTitle: 'Change',onPressed: (){},),
        const SizedBox(height: TSizes.spaceBtwItems/2,),
        Row(
          children: [
            TRoundedContaner(
              width: 60,
              height: 60,
              backgroundColor:dark ? TColors.light:TColors.white,
              padding: const EdgeInsets.all(TSizes.sm),
              child: const Image(image: AssetImage(TImages.paypal),fit: BoxFit.contain,),
            ),
             const SizedBox(width: TSizes.spaceBtwItems/2,),
             Text('Paypal',style: Theme.of(context).textTheme.bodyLarge,),


          ],
        )

      ],
    );
  }
}