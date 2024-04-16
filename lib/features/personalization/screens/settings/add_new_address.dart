import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final dark = THelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: const TAppBar(
        showBackArrow: true,
        title: Text('Add New Address'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                    decoration:  InputDecoration(
                        prefixIcon: const Icon(Iconsax.user), labelText: 'Name',labelStyle: TextStyle(color: dark?TColors.white:TColors.black),)),
                const SizedBox(
                  height: TSizes.spaceBtwInputField,
                ),
                TextFormField(
                    decoration:  InputDecoration(
                        prefixIcon: const Icon(Iconsax.mobile),
                        labelText: 'Phone Number',
                        labelStyle: TextStyle(color: dark?TColors.white:TColors.black),
                        )),
                const SizedBox(
                  height: TSizes.spaceBtwInputField,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                          decoration:  InputDecoration(
                              prefixIcon: const Icon(Iconsax.building_31),
                              labelText: 'Street',labelStyle: TextStyle(color: dark?TColors.white:TColors.black),)),
                    ),
                    const SizedBox(
                      width: TSizes.spaceBtwInputField,
                    ),
                    Expanded(
                      child: TextFormField(
                          decoration:  InputDecoration(
                              prefixIcon: const Icon(Iconsax.code),
                              labelText: 'Postal Code',labelStyle: TextStyle(color: dark?TColors.white:TColors.black),)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: TSizes.spaceBtwInputField,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                          decoration:  InputDecoration(
                              prefixIcon: const Icon(Iconsax.building),
                              labelText: 'City',labelStyle: TextStyle(color: dark?TColors.white:TColors.black),)),
                    ),
                    const SizedBox(
                      width: TSizes.spaceBtwInputField,
                    ),
                    Expanded(
                      child: TextFormField(
                          decoration:  InputDecoration(
                              prefixIcon: const Icon(Iconsax.activity),
                              labelText: 'State',labelStyle: TextStyle(color: dark?TColors.white:TColors.black),)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: TSizes.spaceBtwInputField,
                ),
                TextFormField(
                  decoration:  InputDecoration(
                      prefixIcon: const Icon(Iconsax.global), labelText: 'Country',labelStyle: TextStyle(color: dark?TColors.white:TColors.black),),
                ),
                const SizedBox(
                  height: TSizes.defultSpace,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Save'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
