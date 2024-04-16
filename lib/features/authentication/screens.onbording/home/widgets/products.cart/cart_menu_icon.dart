import 'package:ecommerce/features/authentication/screens.onbording/cart/cart.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TCartCountericon extends StatelessWidget {
  const TCartCountericon({
    super.key, required this.onPressed,   this.iconColor,
  });

  final VoidCallback onPressed;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(onPressed: ()=> Get.to(()=> const CartScreen()), icon:  Icon(Iconsax.shopping_cart,color: iconColor)),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(color: TColors.accent.withOpacity(0.5),borderRadius: BorderRadius.circular(100)
            ),
            child: Center(
              child: Text('2',style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.white,fontSizeFactor: 0.8),),
            ),
          ),
        )
      ],
    );
  }
}