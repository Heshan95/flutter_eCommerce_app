import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

//variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  //update current index when page scroll
  void updatePackageIndicator(index) => currentPageIndex.value = index;

  //jump to the specific dont selected pages
  void dontNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  //upadet current index and jump to the next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
//Get.to(LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  //upadet current index and jump to the next page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
