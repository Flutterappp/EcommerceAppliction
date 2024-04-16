import 'package:ecommerce/common/style/rounded_container.dart';
import 'package:ecommerce/common/style/shadows.dart';
import 'package:ecommerce/common/widgets/icons/t_circular_icon.dart';
import 'package:ecommerce/common/widgets/t_rounded_images.dart';
import 'package:ecommerce/common/widgets/text/product_title_text.dart';
import 'package:ecommerce/common/widgets/text/t_brand_title_text_with_verifed_icon.dart';
import 'package:ecommerce/features/authentication/screens.onbording/home/widgets/products.cart/product_price_text.dart';
import 'package:ecommerce/features/authentication/screens.onbording/product_details/product_detail.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_string.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TProducatCardVertical extends StatelessWidget {
  const TProducatCardVertical({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    // Define the desired width for the outer container
   

    return GestureDetector(
      onTap: () => Get.to(const ProductDetail()),
      child: Container(
        width: 160,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShow],
          borderRadius: BorderRadius.circular(TSizes.producatImageRadius),
          color: dark ? TColors.darkGrey : TColors.white,
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Thumbnail, Wishlist, button, Discount Tag
                TRoundedContaner(
                  height: 180,
                  padding: const EdgeInsets.all(TSizes.sm),
                  backgroundColor: dark ? TColors.dark : TColors.light,
                  child: Stack(
                    children: [
                      // Thumbnail
                      const TRoundedImage(
                        imageUrl: TImages.product1,
                        fit: BoxFit.contain,
                        applyImageRadius: true,
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
                const SizedBox(height: TSizes.spaceBtwItems / 2),

                // Details
                const Padding(
                  padding: EdgeInsets.only(left: TSizes.sm),
                  //only reason to use the Sizedbox here is to make coloumn full width
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TProductTitleText(
                          title: 'White H & M Shirt',
                          smallSize: true,
                        ),
                        SizedBox(height: TSizes.spaceBtwItems / 2),
                        TBrandTitleWithVerifiedIcon(title: 'H & M',),
                      ],
                    ),
                  ),
                ),
                const Spacer(),

                //PRICE
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: TSizes.sm),
                      child: TPrductPriceText(
                        price: '35.0',
                      ),
                    ),
                    //Add to cart Button
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
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


