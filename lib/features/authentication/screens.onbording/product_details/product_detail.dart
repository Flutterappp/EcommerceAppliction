import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/custom_shape/curved_edges/curved_edges_widget.dart';
import 'package:ecommerce/common/widgets/icons/t_circular_icon.dart';
import 'package:ecommerce/common/widgets/t_rounded_images.dart';
import 'package:ecommerce/common/widgets/text/section_heading.dart';
import 'package:ecommerce/features/authentication/screens.onbording/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:ecommerce/features/authentication/screens.onbording/product_details/widgets/product_attributes.dart';
import 'package:ecommerce/features/authentication/screens.onbording/product_details/widgets/product_detial_image_slider.dart';
import 'package:ecommerce/features/authentication/screens.onbording/product_details/widgets/product_meta_data.dart';
import 'package:ecommerce/features/authentication/screens.onbording/product_details/widgets/product_reviews.dart';
import 'package:ecommerce/features/authentication/screens.onbording/product_details/widgets/rating_share_widgit.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_string.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    
    return    Scaffold(
      bottomNavigationBar: const TBottomAddCart(),

      body: SingleChildScrollView(
        child: Column(
          children: [
            //product Image Slider
            const TProductImageSlider(),
            //product Details
            Padding(padding: const EdgeInsets.only(right: TSizes.defultSpace,left: TSizes.defultSpace,bottom: TSizes.defultSpace),
            child: Column(
              children: [
                //Rating & Share
                const TRatingAndShare(),
                //Price, Title, Stack, & Brand
                const TProductMetaData(),
                //Attributes
                const TProductAttrubutes(),
                const SizedBox(height: TSizes.spaceBtwSections,),
                //Checkout Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){}, child: const Text('Checkout'))),
                  const SizedBox(height: TSizes.spaceBtwSections,),
                //Decription
                const TSectionHeading(tital: 'Desctiption',showActionButton: false,),
                const SizedBox(height: TSizes.spaceBtwSections,),
                const ReadMoreText('This Product decription for Blue H & M T-Shrit Sleeve less vest, There are more things are more thinge that can be added to the product description list',style: TextStyle(fontWeight: FontWeight.w100),
                trimLines: 2,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'Show More',
                trimExpandedText:  ' Less',
                moreStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w800),
                lessStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w800),
                ),
                //Reviews
                const Divider(),
                const SizedBox(height: TSizes.spaceBtwItems,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const TSectionHeading(tital: 'Reviews(199)',showActionButton: false,),
                    IconButton(onPressed: () => Get.to(()=> const ProductReviewsScreen() ), icon: const Icon(Iconsax.arrow_right_3,size: 20,))

                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwSections,),
              ],
            ),
            ),
          ],
        ),
      ),
    );
  }
}



