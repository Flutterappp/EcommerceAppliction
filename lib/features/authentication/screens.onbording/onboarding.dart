import 'package:ecommerce/features/authentication/controllers/controllers.onboarding/onbording.controller.dart';
import 'package:ecommerce/features/authentication/screens.onbording/widgets/onboarding_dot_navigation.dart';
import 'package:ecommerce/features/authentication/screens.onbording/widgets/onboarding_next_button.dart';
import 'package:ecommerce/features/authentication/screens.onbording/widgets/onboarding_page.dart';
import 'package:ecommerce/features/authentication/screens.onbording/widgets/onboardingskip.dart';
import 'package:ecommerce/utils/constants/image_string.dart';
import 'package:ecommerce/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
          //Horizontal Scrollable Page
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnboardingPage(
                image: TImages.onBordingImage1,
                tital: TTexts.onBoardingTitle1,
                subTital: TTexts.onBoardingSubTitle1,
              ),
              OnboardingPage(
                image: TImages.onBordingImage2,
                tital: TTexts.onBoardingTitle2,
                subTital: TTexts.onBoardingSubTitle2,
              ),
              OnboardingPage(
                image: TImages.onBordingImage3,
                tital: TTexts.onBoardingTitle3,
                subTital: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          
          

          //Skip Button
          const OnBoardingSkip(),

          //Dot Navigation SmoothIndicator
          const OnboardingDotNavigation(),


          //Circular Button
          const OnboardingNextButton()


        ],
      ),
    );
  }
}









