import 'package:ecommerce/common/style/rounded_container.dart';
import 'package:ecommerce/common/widgets/text/t_circular_image.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/enums.dart';
import 'package:ecommerce/utils/constants/image_string.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../widgets/text/t_brand_title_text_with_verifed_icon.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key, required this.showBorder, this.onTap,
  });
  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: TRoundedContaner(
        padding: const EdgeInsets.all(TSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          //icon
          Flexible(
            child: TCircularImage(
              image: TImages.clothesbrand,
              isNetworkImage: false,
              backgroundColor: Colors.transparent,
              overlayColor:
                  THelperFunction.isDarkMode(context)
                      ? TColors.white
                      : TColors.black,
            ),
          ),
          const SizedBox(
            width: TSizes.spaceBtwItems / 2,
          ),
          //Text
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                const TBrandTitleWithVerifiedIcon(
                  title: 'H & M',
                  brandTextSize: TextSizes.large,
                ),
                Text(
                  '256 products',
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium,
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}