import 'package:ecommerce/common/style/rounded_container.dart';
import 'package:ecommerce/common/widgets/text/product_title_text.dart';
import 'package:ecommerce/common/widgets/text/section_heading.dart';
import 'package:ecommerce/features/authentication/screens.onbording/home/widgets/products.cart/product_price_text.dart';
import 'package:ecommerce/features/authentication/screens.onbording/product_details/widgets/choice_chip.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TProductAttrubutes extends StatelessWidget {
  const TProductAttrubutes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Column(
      children: [
        //Selected Attrubutes pricing & Description
        TRoundedContaner(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkGrey : TColors.grey,
        
          child: Column(
            //Title, Price and Stock Staus
            children: [
              //Title, Price and Stock Staus
              Row(
                children: [
                  const TSectionHeading(
                    tital: 'Variation',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    width: TSizes.spaceBtwItems,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const TProductTitleText(
                            title: 'Price:',
                            smallSize: true,
                          ),
                          
                          //Actual Price
                          Text(
                            '\$25',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(
                            width: TSizes.spaceBtwItems,
                          ),
                          //seal price
                          const TPrductPriceText(price: '20')
                        ],
                      ),

                      ///stack
                      Row(
                        children: [
                          const TProductTitleText(
                            title: 'Stock:',
                            smallSize: true,
                          ),
                          Text(
                            ' InStock',
                            style: Theme.of(context).textTheme.titleMedium,
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
              //Varitation Description
              const TProductTitleText(title: 'This is Decription of The Product and it can go upto max 4 lines',
              smallSize: true,
              maxLines: 4,
              ),

            ],
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),
        //Attributes
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(tital: 'Colors',showActionButton: false,),
            const SizedBox(height: TSizes.spaceBtwItems/2,),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(text: 'Green', selected: false, onSelected: (value){},),
             TChoiceChip(text: 'Blue', selected: true,onSelected: (value){},),
             TChoiceChip(text: 'Red', selected: false,onSelected: (value){},),
             
              ],
            )
          ],
          
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),
           Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(tital: 'Sizes',showActionButton: false,),
            const SizedBox(height: TSizes.spaceBtwItems/2,),
           Wrap(
            spacing: 8,
            children: [
               TChoiceChip(text: 'EU 34', selected: true,onSelected: (value){},),
            TChoiceChip(text: 'EU36', selected: false,onSelected: (value){},),
            TChoiceChip(text: 'EU38', selected: false,onSelected: (value){},)
            ],
           )
          ],
        )
      ],
    );
  }
}
