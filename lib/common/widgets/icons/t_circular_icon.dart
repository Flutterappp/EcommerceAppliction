import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TCircularIcon extends StatelessWidget {
  // A custom Circular Icon Widget with a background colors.
  //Properites are:
  // Container [width],[height], &[backgroundcolor].
  //Icon's [size], [height], &[onPressed]

  const TCircularIcon({
    super.key,
    this.width,
    this.height,
    this.size = TSizes.lg,
    required this.icon,
    this.backgroundColor,
    this.onPressed, this.color,
  });
  final double? width, height, size;
  final IconData icon;
  final Color? backgroundColor;
  final Color? color;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: backgroundColor!=null ? backgroundColor!:THelperFunction.isDarkMode(context) 
              ? TColors.black.withOpacity(0.9)
              : TColors.white.withOpacity(0.9),
              ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon,color: color,size: size,),
      ),
    );
  }
}
