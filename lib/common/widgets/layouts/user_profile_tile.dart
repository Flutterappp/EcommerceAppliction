import 'package:ecommerce/common/widgets/text/t_circular_image.dart';
import 'package:ecommerce/features/personalization/screens/profile/profile.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({
    super.key, required Future? Function() onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
     leading: const TCircularImage(
       image: TImages.user,
       width: 50,
       height: 50,
       padding: 0,
     ),
     title: Text('Arpit Mishra',style: Theme.of(context).textTheme.headlineSmall!.apply(color:TColors.white),),
     subtitle: Text('Support@appstar.com',style: Theme.of(context).textTheme.bodyMedium!.apply(color:TColors.white),),
     trailing: IconButton(onPressed: () {
      Get.to(()=> const ProfileScreen());
       
     },icon: const Icon(Iconsax.edit,color: TColors.white,),),
                    );
  }
}