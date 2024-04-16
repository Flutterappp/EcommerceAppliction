import 'package:ecommerce/common/style/brand_show_case.dart';
import 'package:ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce/common/widgets/text/section_heading.dart';
import 'package:ecommerce/features/authentication/screens.onbording/home/widgets/products.cart/product_card_vertical.dart';
import 'package:ecommerce/utils/constants/image_string.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(
      shrinkWrap: true,
      //physics: const NeverScrollableScrollPhysics(),
      children: [
                  Padding(padding: const EdgeInsets.all(TSizes.defultSpace),
                  child: Column(
                    children: [
                      //Brands
                      const TBrandShowcase(images: [TImages.product1,TImages.product2,TImages.product3],),
                     const TBrandShowcase(images: [TImages.product1,TImages.product2,TImages.product3],),
                     const TBrandShowcase(images: [TImages.product1,TImages.product2,TImages.product3],),
                      const SizedBox(height: TSizes.spaceBtwItems,),
                        
                      //Product
                      TSectionHeading(tital: 'You might like',onPressed: () {},),
                      const SizedBox(height: TSizes.spaceBtwItems,),
                        
                      TGridLayout(itemCount: 10, itemBuilder: (_,index)=>const TProducatCardVertical()),
                      const SizedBox(height: TSizes.spaceBtwSections,),
                        
                        
                      
                    ],
                  ),
                  ),
                ],
    );
  }
}