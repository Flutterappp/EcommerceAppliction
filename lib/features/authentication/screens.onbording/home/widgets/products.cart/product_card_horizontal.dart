

import 'package:ecommerce/common/style/rounded_container.dart';
import 'package:ecommerce/common/style/shadows.dart';
import 'package:ecommerce/common/widgets/icons/t_circular_icon.dart';
import 'package:ecommerce/common/widgets/t_rounded_images.dart';
import 'package:ecommerce/common/widgets/text/product_title_text.dart';
import 'package:ecommerce/common/widgets/text/t_brand_title_text_with_verifed_icon.dart';
import 'package:ecommerce/features/authentication/screens.onbording/home/widgets/products.cart/product_price_text.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_string.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TProducatCardHorizontal extends StatelessWidget {
  const TProducatCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {

    final dark = THelperFunction.isDarkMode(context);
    return Container(
        width: 310,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          
          borderRadius: BorderRadius.circular(TSizes.producatImageRadius),
          color: dark ? TColors.darkGrey : TColors.lightGrey,
        ),
        child: Row(
          children: [
            /// Thumbail
            TRoundedContaner(
              height: 120,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.black : TColors.light,
              child:  Stack(
                children: [
                  ///Thumbil Image
                  const SizedBox(
                    height: 120,
                    width: 120,
                    child: TRoundedImage(imageUrl: TImages.product4,applyImageRadius: true,)
                    ),
                      // Sale Tag
                      Positioned(
                        top: 5,
                        child: TRoundedContaner(
                          radius: TSizes.sm,
                          backgroundColor: TColors.secondary.withOpacity(0.8),
                          padding: const EdgeInsets.symmetric(
                            horizontal: TSizes.sm,
                            vertical: TSizes.xs,
                          ),
                          child: Text(
                            "25%",
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge!
                                .apply(color: TColors.black),
                          ),
                        ),
                      ),
                      // Favourite Icon Button
                      const Positioned(
                        top: 0,
                        right: 0,
                        child: TCircularIcon(
                          icon: Iconsax.heart5,
                          color: Colors.red,
                        ),
                      )
                ],
              ),
            ),
            /// Details
             SizedBox(
              width: 172,
              child: Padding(
                padding: const EdgeInsets.only(top: TSizes.sm,left: TSizes.sm),
                child: Column(
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TProductTitleText(title: 'Black H & M Shous For Man',smallSize: true,),
                        SizedBox(height: TSizes.spaceBtwItems/2,),
                        TBrandTitleWithVerifiedIcon(title: 'H & M'),
                      ],
                    ),

                    const Spacer(),
                
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Flexible(child: TPrductPriceText(price: '256.0 ')),

                        /// Add to Catr Button
                        Container(
                      decoration: const BoxDecoration(
                        color: TColors.dark,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(TSizes.cardRadiusMd),
                          bottomRight:
                              Radius.circular(TSizes.producatImageRadius),
                        ),
                      ),
                      child: const SizedBox(
                        width: TSizes.iconLg * 1.2,
                        height: TSizes.iconLg * 1.2,
                        child: Center(
                          child: Icon(
                            Iconsax.add,
                            color: TColors.white,
                          ),
                        ),
                      ),
                    ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
    );
  }
}