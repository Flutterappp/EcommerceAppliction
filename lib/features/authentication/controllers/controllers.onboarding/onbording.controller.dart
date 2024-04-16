import 'package:ecommerce/features/authentication/screens.onbording/login/login.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController{
  static OnboardingController get instance => Get.find();

  ///Variable
  final pageController =PageController();
  Rx<int> currentPageIndex = 0.obs;
  ///Update Current Index when page scroll
  void updatePageIndicator(index) => currentPageIndex.value=index;

  /// jump to the  specified dot selected page
  void dotNavigationClick(index){
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  ///Update current index & jump to next page
  void nextPage() {
  if (currentPageIndex.value == 2) {
    // ignore: prefer_const_constructors
    Get.offAll(() =>  LoginScreen()); // Use a lambda to instantiate the LoginScreen
  } else {
    int page = currentPageIndex.value + 1;
    pageController.jumpToPage(page);
  }
}

  ///Update current index & jump to the last Page
  void skipPage(){
    currentPageIndex.value = 2;
    pageController.jumpTo(2);
  }
}