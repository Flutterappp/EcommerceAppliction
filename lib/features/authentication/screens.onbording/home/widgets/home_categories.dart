import 'package:ecommerce/common/widgets/common.widgets.image_text_widget/vertical_image_text.dart';
import 'package:ecommerce/features/authentication/screens.onbording/sub_categorise/sub_categorys.dart';
import 'package:ecommerce/utils/constants/image_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_,index){
          return  TVerticalImageText(image: TImages.sportIcon, title: 'Sports',onTap: ()=> Get.to(()=>const SubCategoriesScreen()),);
        },
      
      ),
    );
  }
}