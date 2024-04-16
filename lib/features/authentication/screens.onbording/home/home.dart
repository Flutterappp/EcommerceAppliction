import 'package:ecommerce/common/widgets/custom_shape/container/primary_header_contaner.dart';
import 'package:ecommerce/common/widgets/custom_shape/container/search_container.dart';
import 'package:ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce/common/widgets/text/section_heading.dart';
import 'package:ecommerce/features/authentication/screens.onbording/all_products/all_product.dart';
import 'package:ecommerce/features/authentication/screens.onbording/home/widgets/home_appbar.dart';
import 'package:ecommerce/features/authentication/screens.onbording/home/widgets/home_categories.dart';
import 'package:ecommerce/features/authentication/screens.onbording/home/widgets/products.cart/product_card_vertical.dart';
import 'package:ecommerce/features/authentication/screens.onbording/home/widgets/promo_slider.dart';
import 'package:ecommerce/utils/constants/image_string.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Header -- Tutorial[Section #3, video#2]
              const TPrimaryHeaderContaner(
                  child: Column(
                children: [
                  //-- Appbar -- Tutorial [section #3, video#3]
                  THomeAppbar(),
                  
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  //-- Searchbar -- Tutorial [section #3, video#]
                  TSearchContainer(
                    text: 'Search in Store',
                  ),

                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  //-- categoris -- Tutorial [section #3, video#4]
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defultSpace),
                    child: Column(
                      children: [
                        TSectionHeading(
                          tital: 'Populer Categries',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),
                        //Caterories
                        THomeCategories()
                      ],
                    ),
                  ),
                   SizedBox(height: TSizes.spaceBtwSections,)

                ],
              )),
              //Body -- Tutorial [Section#3 , video#5]
              Padding(
                  padding: const EdgeInsets.all(TSizes.defultSpace),
                  //Promo Slider
                  child: Column(
                    children: [
                      const TPromoSlider(
                        banners: [
                          TImages.promoBanner1,
                          TImages.promoBanner2,
                          TImages.promoBanner3,
                        ],
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwSections,
                      ),

                      //Heading
                       TSectionHeading(tital: 'Popular Product',onPressed: ()=> Get.to(()=> const AllProducts()),),
                      const SizedBox(height: TSizes.spaceBtwItems,),

                      ///Popular Product
                      TGridLayout(itemCount: 5, itemBuilder: (_, index)=>const TProducatCardVertical()),
                      
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}


