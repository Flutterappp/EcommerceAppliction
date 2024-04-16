import 'package:ecommerce/common/widgets/t_rounded_images.dart';
import 'package:ecommerce/common/widgets/text/product_title_text.dart';
import 'package:ecommerce/common/widgets/text/t_brand_title_text_with_verifed_icon.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_string.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //Image
        TRoundedImage(imageUrl: TImages.product2,
        width: 60,
        height: 60,
        padding: const EdgeInsets.all(TSizes.sm),
        backgroundColor: THelperFunction.isDarkMode(context)? TColors.darkGrey:TColors.light,
        ),
        const SizedBox(width: TSizes.spaceBtwItems),
    
        //Title,Price,&Size
         Expanded(
           child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TBrandTitleWithVerifiedIcon(title: 'HRX'),
              const Flexible(child: TProductTitleText(title: 'Black Sports Shous',maxLines: 1,)),
              //Attributes
           
              Text.rich(TextSpan(
                children: [
                  TextSpan(text: ' Color:',style: Theme.of(context).textTheme.bodySmall),
                   TextSpan(text: ' Black',style: Theme.of(context).textTheme.bodyLarge),
                   TextSpan(text: ' Size:',style: Theme.of(context).textTheme.bodySmall),
                   TextSpan(text: ' UK 10',style: Theme.of(context).textTheme.bodyLarge),
                ]
              ))
            ],
                               ),
         ),
        
      ],
    );
  }
}