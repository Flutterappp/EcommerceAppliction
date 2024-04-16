import 'package:ecommerce/common/style/t_brand_card.dart';
import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/features/authentication/screens.onbording/home/widgets/products.cart/sortable/sortable_product.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TAppBar(title: Text('H & M'),showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(TSizes.defultSpace),
        child: Column(
          children: [
            // Brand Detail

            TBrandCard(showBorder: true),
            SizedBox(height: TSizes.spaceBtwSections,),

            TSortableProduct()
          ],
        ),
        ),
      ),
    );
  }
}