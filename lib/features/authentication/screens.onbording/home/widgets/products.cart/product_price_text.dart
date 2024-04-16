import 'package:flutter/material.dart';

class TPrductPriceText extends StatelessWidget {
  const TPrductPriceText(
      {super.key,
       this.currencySign='\$',
      required this.price,
     this.maxLines= 1,
       this.isLarge=false,
       this.lineThough=false});

  final String currencySign, price;
  final int maxLines;
  final bool isLarge;
  final bool lineThough;

  @override
  Widget build(BuildContext context) {
    return Text(
      currencySign+price,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: isLarge?Theme.of(context).textTheme.headlineMedium!.apply(decoration: lineThough?TextDecoration.lineThrough:null):
      Theme.of(context).textTheme.titleLarge!.apply(decoration: lineThough ? TextDecoration.lineThrough : null),
    );
  }
}
