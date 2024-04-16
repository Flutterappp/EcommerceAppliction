import 'package:ecommerce/common/style/t_brand_card.dart';
import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce/common/widgets/text/section_heading.dart';
import 'package:ecommerce/features/authentication/screens.onbording/brand/brand_products.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text('Brand'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defultSpace),
          child: Column(
            // Heading
            children: [
              const TSectionHeading(tital: 'Brands',showActionButton: false,),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              // Brands
              TGridLayout(
                  itemCount: 10,
                  mainAxisExtent: 80,
                  itemBuilder: (context, index) =>
                       TBrandCard(showBorder: true,onTap: ()=>Get.to(()=>const BrandProducts()),))
            ],
          ),
        ),
      ),
    );
  }
}
