import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/features/authentication/screens.onbording/cart/widgets/cart_iteam1.dart';
import 'package:ecommerce/features/authentication/screens.onbording/cart/widgets/checkout.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(TSizes.defultSpace),
        /// Items In Cart
        child: TCartIteam(),
      ),
      /// Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defultSpace),
        child: ElevatedButton(onPressed: () => Get.to(()=> const CheckoutScreen() ), child: const Text('Checkout\$256.0')),
      ),
    );
  }
}




