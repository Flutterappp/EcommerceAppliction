import 'package:ecommerce/features/authentication/screens.onbording/home/widgets/products.cart/product_card_vertical.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../../../common/widgets/layouts/grid_layout.dart';

class TSortableProduct extends StatelessWidget {
  const TSortableProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
    
        // Dropdown
        DropdownButtonFormField(
          decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          items: ['Name','Higher Price', 'Lower Price', 'Sale', 'Newest',' Popularity'].map((option) => DropdownMenuItem(value: option,child: Text(option))).toList(), 
          onChanged: (value){}
          ),
          const SizedBox(height: TSizes.spaceBtwSections,),
          // Products
          TGridLayout(itemCount: 4, itemBuilder: (_,index)=>const TProducatCardVertical())
    
      ],
    );
  }
}