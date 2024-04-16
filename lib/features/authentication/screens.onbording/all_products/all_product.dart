import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/features/authentication/screens.onbording/home/widgets/products.cart/sortable/sortable_product.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      appBar: TAppBar(title: Text('Popular Products'), showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(TSizes.defultSpace),
        child: TSortableProduct(),
        ),
      ),
    );
  }
}

