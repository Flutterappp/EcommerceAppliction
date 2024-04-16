import 'package:ecommerce/common/widgets/text/section_heading.dart';
import 'package:ecommerce/features/personalization/screens/settings/address.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TBillingAddresSection extends StatelessWidget {
  const TBillingAddresSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(tital: 'Shiping Address',buttonTitle: 'Change',onPressed: ()=>Get.to(()=> const UserAddressScreen()),),
        Text('Coding With T',style: Theme.of(context).textTheme.bodyLarge,),
        const SizedBox(width: TSizes.spaceBtwItems/2,),
         Row(
          children: [
            const Icon(Icons.phone,color: Colors.grey,size: 16,),
            const SizedBox(width: TSizes.spaceBtwItems,),
            Text('+91-123456781',style: Theme.of(context).textTheme.bodyMedium,)
          ],
        ),
        const SizedBox(width: TSizes.spaceBtwItems/2,),
        Row(
          children: [
            const Icon(Icons.location_history,color: Colors.grey,size: 16,),
            const SizedBox(width: TSizes.spaceBtwItems,),
            Expanded(child: Text('South Liana, Maine 87695, USA',style: Theme.of(context).textTheme.bodyMedium,))
          ],
        ),
        const SizedBox(width: TSizes.spaceBtwItems/2,),

      ],
    );
  }
}