import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/features/authentication/screens.onbording/product_details/widgets/rating_indicator.dart';
import 'package:ecommerce/features/authentication/screens.onbording/product_details/widgets/rating_progress_indicater.dart';
import 'package:ecommerce/features/authentication/screens.onbording/product_details/widgets/user_reviews_card.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return    Scaffold(
      ///Appbar
      appBar: const TAppBar(title: Text('Reviews & Rating'),showBackArrow: true,),

      ///Body
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(TSizes.defultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Rating and reviews are verified and are from pepole who use the same type of device that you use.'),
            const SizedBox(height: TSizes.spaceBtwItems,),
            /// Overall Product Rating
            const TOverallProductRating(),
            const TRatingBarIndicator(rating: 4.5,),
            Text('12,611',style: Theme.of(context).textTheme.bodySmall,),
            const SizedBox(height: TSizes.spaceBtwSections,),

            /// User Rweviews List
            const UserReviewsCard(),
            const UserReviewsCard(),
            const UserReviewsCard(),

            

          ],
        ),
        ),

      ),
    );
  }
}





