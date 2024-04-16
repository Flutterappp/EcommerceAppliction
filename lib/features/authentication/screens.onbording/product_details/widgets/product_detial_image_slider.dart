import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/custom_shape/curved_edges/curved_edges_widget.dart';
import 'package:ecommerce/common/widgets/icons/t_circular_icon.dart';
import 'package:ecommerce/common/widgets/t_rounded_images.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_string.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,
  
  });

  

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return TCurvedEdgesWidget(child: Container(
      color: dark?TColors.darkGrey:TColors.light,
      child:  Stack(
        children: [
          //Main Large Image
          const SizedBox(height: 400,
          
          child: Padding(
            padding: EdgeInsets.all(TSizes.producatImageRadius*2),
            child: Center(child: Image(image: AssetImage(TImages.shirt3_1))),
    
          )
          ),
          //Image Slider
          Positioned(
            right: 0,
            bottom: 30,
            left: TSizes.defultSpace,
            child: SizedBox(
              height: 80,
              
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: const AlwaysScrollableScrollPhysics(),
                separatorBuilder: (_, __)=>const SizedBox(width: TSizes.spaceBtwItems,),itemCount: 9,itemBuilder: (_, index) => TRoundedImage(
                  width: 80,
                  backgroundColor: dark? TColors.dark:TColors.white,
                  border: Border.all(color: TColors.primary),
                  padding: const EdgeInsets.all(TSizes.sm),
                  imageUrl: TImages.shirt3_2),
              ),
            ),
          ),
          // Appbar Icons
          const TAppBar(
            showBackArrow: true,
            actions: [
              TCircularIcon(icon: Iconsax.heart5,color: Colors.red,)
            ],
          )
           
        ],
      ),
    ),);
  }
}