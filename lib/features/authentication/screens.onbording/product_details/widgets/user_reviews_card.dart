import 'package:ecommerce/common/style/rounded_container.dart';
import 'package:ecommerce/features/authentication/screens.onbording/product_details/widgets/rating_indicator.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_string.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserReviewsCard extends StatelessWidget {
  const UserReviewsCard({super.key});

  @override
  Widget build(BuildContext context) {

    final dark = THelperFunction.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(backgroundImage: AssetImage(TImages.user1),),
                const SizedBox(width: TSizes.spaceBtwItems,),
                Text('Mohit Raj',style: Theme.of(context).textTheme.titleLarge,),
                
            
              ],
            ),
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),


        ///Review
         Row(
          children: [
            const TRatingBarIndicator(rating: 4),
            const SizedBox(width: TSizes.spaceBtwItems,),
            Text('09 may 2024',style: Theme.of(context).textTheme.bodySmall,),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),
        const ReadMoreText('The user interface of the app is quite intuitive , I was able to navigate and make purrachases seamlessly, Great job!',
        trimLines: 1,
        trimMode: TrimMode.Line,
        trimExpandedText: 'show less',
        trimCollapsedText: ' show more',
        moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: TColors.primary),
        lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: TColors.primary),

        ),
        const SizedBox(height: TSizes.spaceBtwItems,),

        /// Company Review
        TRoundedContaner(
          backgroundColor: dark? TColors.darkerGraey: TColors.grey,
          child:  Padding(padding: const EdgeInsets.all(TSizes.md),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('App Star',style: Theme.of(context).textTheme.titleMedium,),
                  Text('10 may 2024',style: Theme.of(context).textTheme.bodyMedium,),
                ],
              ),
              const SizedBox(height: TSizes.spaceBtwItems,),
        const ReadMoreText('The user interface of the app is quite intuitive , I was able to navigate and make purrachases seamlessly, Great job!',
        trimLines: 1,
        trimMode: TrimMode.Line,
        trimExpandedText: 'show less',
        trimCollapsedText: ' show more',
        moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: TColors.primary),
        lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: TColors.primary),

        ),
            ],
          ),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwSections,),

        
      ],

    );
  }
}