import 'package:ecommerce/common/widgets/custom_shape/container/circular_container.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TChoiceChip extends StatelessWidget {
  const TChoiceChip(
      {super.key, required this.text, required this.selected, this.onSelected});

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data:  Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: THelperFunction.getColor(text) !=null ? const SizedBox(): Text(text),
         selected: selected,
         onSelected: onSelected,
         labelStyle: TextStyle(color: selected?TColors.white:null),
         avatar: THelperFunction.getColor(text) != null ? TCircularContainer(width: 50, height: 50, backgroundColor: THelperFunction.getColor(text)!) : null,
         shape: THelperFunction.getColor(text) != null? const CircleBorder():null,
         labelPadding: THelperFunction.getColor(text) != null? const EdgeInsets.all(0):null,
         padding: THelperFunction.getColor(text) !=null? const EdgeInsets.all(0):null,
         selectedColor: Colors.green,
         backgroundColor: THelperFunction.getColor(text) != null? Colors.green:null,
         ),
    );
  }
}
