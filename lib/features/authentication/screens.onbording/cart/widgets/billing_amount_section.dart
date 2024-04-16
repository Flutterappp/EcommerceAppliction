import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TBllingAmountSection extends StatelessWidget {
  const TBllingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        /// SubTotal
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('SubTotal',style: Theme.of(context).textTheme.bodyMedium,),
             Text('\$256.00',style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems/2,),
        /// Shipping Fee
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping Fee',style: Theme.of(context).textTheme.bodyMedium,),
             Text('\$6.00',style: Theme.of(context).textTheme.labelLarge,),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems/2,),
        /// Text Fee
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Text Fee',style: Theme.of(context).textTheme.bodyMedium,),
             Text('\$6.00',style: Theme.of(context).textTheme.labelLarge,),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems/2,),
        ///Order Total
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order Total',style: Theme.of(context).textTheme.bodyMedium,),
             Text('\$6.00',style: Theme.of(context).textTheme.titleMedium,),
          ],
        ),

      ],
    );
  }
}