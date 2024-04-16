import 'package:ecommerce/features/authentication/controllers/controllers.onboarding/onbording.controller.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: TDeviceUtils.getAppBarHeight(),
        right: TSizes.defultSpace,
        child: TextButton(onPressed: ()=> OnboardingController.instance.skipPage(), child: const Text('Skip')));
  }
}
