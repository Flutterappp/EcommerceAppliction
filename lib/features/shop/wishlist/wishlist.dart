import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/icons/t_circular_icon.dart';
import 'package:ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce/features/authentication/screens.onbording/home/home.dart';
import 'package:ecommerce/features/authentication/screens.onbording/home/widgets/products.cart/product_card_vertical.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: TAppBar(
        title: Text('Wishlist',style: Theme.of(context).textTheme.headlineMedium,),
        actions: [
          TCircularIcon(icon: Iconsax.add,onPressed: ()=> Get.to(const HomeScreen()),),
          
        ],
      ),
      body:  SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(TSizes.defultSpace),
        child: Column(
          children: [
            TGridLayout(itemCount: 10, itemBuilder: (_,index)=> const TProducatCardVertical())
          ],
        ),
        ),
        
      ),
    );
  }
}