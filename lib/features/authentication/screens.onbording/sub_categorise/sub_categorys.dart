import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/t_rounded_images.dart';
import 'package:ecommerce/common/widgets/text/section_heading.dart';
import 'package:ecommerce/features/authentication/screens.onbording/home/widgets/products.cart/product_card_horizontal.dart';
import 'package:ecommerce/utils/constants/image_string.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const TAppBar(title: Text('Sports'),showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(TSizes.defultSpace),
        child: Column(
          //Banner
          children: [
            const TRoundedImage(
              width: double.infinity,
              height: null,
              imageUrl: TImages.promoBanner3,
              applyImageRadius: true,
            ),
            const SizedBox(height: TSizes.spaceBtwSections,),

            /// Sub- Categories
            
            Column(
              children: [
                /// Heading
                TSectionHeading(tital: 'Sports Shitrs',onPressed: (){},),
                const SizedBox(height: TSizes.spaceBtwItems/2,),
                SizedBox(
                  height: 120,
                  child: ListView.separated(
                    separatorBuilder: (context,index)=> const SizedBox(width: TSizes.spaceBtwItems,),
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder:(context,index)=> const TProducatCardHorizontal(),
                  
                  ),
                )
              ],
            )
          ],
        ),
        ),
      ),
    );
  }
}