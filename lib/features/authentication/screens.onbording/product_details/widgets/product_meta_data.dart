import 'package:ecommerce/common/style/rounded_container.dart';
import 'package:ecommerce/common/widgets/text/product_title_text.dart';
import 'package:ecommerce/common/widgets/text/t_brand_title_text_with_verifed_icon.dart';
import 'package:ecommerce/common/widgets/text/t_circular_image.dart';
import 'package:ecommerce/features/authentication/screens.onbording/home/widgets/products.cart/product_price_text.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/enums.dart';
import 'package:ecommerce/utils/constants/image_string.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //price & sale price
        Row(
          children: [
            //sale Tag
            TRoundedContaner(
              radius: TSizes.sm,
              backgroundColor: TColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(horizontal: TSizes.sm,vertical: TSizes.xs),
              child: Text('25%',style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black),),

            ),
            const SizedBox(width: TSizes.spaceBtwItems,),

            //price
            Text('\$250',style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
            const SizedBox(width: TSizes.spaceBtwItems,),
            const TPrductPriceText(price: '175',isLarge: true,),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems/1.5,),

        //Title
        const TProductTitleText(title: 'White H & M T-Shirt'),
         const SizedBox(height: TSizes.spaceBtwItems/1.5,),


        //stock Status
         Row(
           children: [
             const TProductTitleText(title: 'Status'),
             const SizedBox(height: TSizes.spaceBtwItems,),
             Text(' In Stock',style: Theme.of(context).textTheme.titleMedium,),
           ],
         ),
         
         const SizedBox(height: TSizes.spaceBtwItems/1.5,),

        //Brand
        Row(
          children: [
            TCircularImage(image: TImages.clothIcon,
            width: 32,
            height: 32,
            overlayColor: dark?TColors.white:TColors.black,
            ),
            const TBrandTitleWithVerifiedIcon(title: 'H & M',brandTextSize: TextSizes.medium,),
          ],
        )
      ],
      
    );
  }
}