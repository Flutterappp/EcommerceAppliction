import 'package:ecommerce/common/style/brand_show_case.dart';
import 'package:ecommerce/common/style/rounded_container.dart';
import 'package:ecommerce/common/style/t_brand_card.dart';
import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/appbar/tabbar.dart';
import 'package:ecommerce/common/widgets/custom_shape/container/search_container.dart';
import 'package:ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce/common/widgets/text/section_heading.dart';
import 'package:ecommerce/common/widgets/text/t_brand_title_text_with_verifed_icon.dart';
import 'package:ecommerce/common/widgets/text/t_circular_image.dart';
import 'package:ecommerce/features/authentication/screens.onbording/brand/all_brand.dart';
import 'package:ecommerce/features/authentication/screens.onbording/home/widgets/products.cart/cart_menu_icon.dart';
import 'package:ecommerce/features/store/wigets/category_tab.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/enums.dart';
import 'package:ecommerce/utils/constants/image_string.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        //Appbar
        appBar: TAppBar(
          title: Text(
            'My Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            TCartCountericon(
              onPressed: () {},
            )
          ],
        ),
        body: NestedScrollView(
            //Header
            headerSliverBuilder: (_, innerBoxIsScrolles) {
              return [
                SliverAppBar(
                    automaticallyImplyLeading: false,
                    pinned: true,
                    floating: true,
                    backgroundColor: THelperFunction.isDarkMode(context)
                        ? TColors.black
                        : TColors.white,
                    expandedHeight: 440,
                    flexibleSpace: Padding(
                      padding: const EdgeInsets.all(TSizes.defultSpace),
                      child: ListView(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          //Search bar
                          const SizedBox(
                            height: TSizes.spaceBtwItems,
                          ),
                          const TSearchContainer(
                            text: 'Search in Store',
                            showBorder: true,
                            showBackground: false,
                            padding: EdgeInsets.zero,
                          ),
                          const SizedBox(
                            height: TSizes.spaceBtwSections,
                          ),
                          // Featured Brands
                          TSectionHeading(
                            tital: 'Featured Brands',
                            onPressed: ()=> Get.to(()=> const AllBrandsScreen()),
                          ),
                          const SizedBox(
                            height: TSizes.spaceBtwItems / 1.5,
                          ),
                          //Brand GRID

                          TGridLayout(
                            itemCount: 4,
                            mainAxisExtent: 70,
                            itemBuilder: (_, index) {
                              return const TBrandCard(
                                showBorder: true,
                              );
                            },
                          )
                        ],
                      ),
                    ),
                    //Tabs
                    bottom: const TTabBar(tabs: [
                      Tab(
                        child: Text('Sports'),
                      ),
                      Tab(
                        child: Text('Furniture'),
                      ),
                      Tab(
                        child: Text('Electronics'),
                      ),
                      Tab(
                        child: Text('Clothes'),
                      ),
                      Tab(
                        child: Text('Cosmetics'),
                      ),
                    ]))
              ];
            },
            //Body
            body: const TabBarView(
              children: [
                TCategoryTab(),
                TCategoryTab(),
                TCategoryTab(),
                TCategoryTab(),
                TCategoryTab(),
              ],
            )),
      ),
    );
  }
}
