import 'package:ecommerce/features/authentication/screens.onbording/cart/widgets/add_remove_button.dart';
import 'package:ecommerce/features/authentication/screens.onbording/cart/widgets/cart_item.dart';
import 'package:ecommerce/features/authentication/screens.onbording/home/widgets/products.cart/product_price_text.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TCartIteam extends StatelessWidget {
  const TCartIteam({
    super.key,  this.showAddRemoveButton=true,
  });

  final bool showAddRemoveButton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) =>
          const SizedBox(height: TSizes.spaceBtwSections),
      itemCount: 2,
      itemBuilder: (_, index) =>  Column(
        children: [
          /// Cart Item
          const TCartItem(),
          if(showAddRemoveButton) const SizedBox(
            height: TSizes.spaceBtwItems,
          ),
          /// Add Remove Row with total Price
          if(showAddRemoveButton) const Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
               
                children: [
                  SizedBox(
                    //Extra Space
                    width: 70,
                  ),
                    /// Add Remove Button
              TProductQuantityWithAddRemoveButton(),
                ],
              ),
              // Product total price
          
              TPrductPriceText(price: '256',)
            ],
          )
        ],
      ),
    );
  }
}