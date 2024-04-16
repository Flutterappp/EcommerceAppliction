import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/device/device_utility.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TTabBar extends StatelessWidget implements PreferredSizeWidget {
  const TTabBar({Key? key, required this.tabs}) : super(key: key);

  final List<Widget> tabs;

  @override
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Material(
      color: dark ? TColors.black : TColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: TColors.primary,
        labelColor: dark ? TColors.white : TColors.primary,
        unselectedLabelColor: TColors.darkGrey,
      ),
    );
  }
  
  @override
  
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());

}