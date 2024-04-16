import 'package:ecommerce/common/style/rounded_container.dart';
import 'package:ecommerce/common/style/t_brand_card.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_string.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TBrandShowcase extends StatelessWidget {
  const TBrandShowcase({
    super.key, required this.images,
  });
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return TRoundedContaner(
      showBorder: true,
      borderColor: TColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(TSizes.md),
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(
        children: [
          //Brand with Product Count
          const TBrandCard(showBorder: false,),
          const SizedBox(height: TSizes.spaceBtwItems,),
          //Brand Top 3 Product Image
          Row(
            children: images.map((image) => brandTopProductImageWidget(image, context)).toList()
          )
    
        ],
      ),
    );
  }
}

Widget brandTopProductImageWidget(String image,context){
  return Expanded(child: TRoundedContaner(
    height: 100,
    padding: const EdgeInsets.all(TSizes.md),
    margin: const EdgeInsets.only(right: TSizes.sm),
    backgroundColor: THelperFunction.isDarkMode(context)?TColors.darkGrey:TColors.light,
    child:  Image(image: AssetImage(image)),
  ));
}