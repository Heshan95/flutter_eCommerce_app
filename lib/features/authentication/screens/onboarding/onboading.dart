import 'package:ecommerce_application_2024/features/authentication/controllers_onboading/onboarding_controller.dart';
import 'package:ecommerce_application_2024/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:ecommerce_application_2024/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:ecommerce_application_2024/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:ecommerce_application_2024/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:ecommerce_application_2024/util/constants/image_strings.dart';
import 'package:ecommerce_application_2024/util/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoadingScreen extends StatelessWidget {
  const OnBoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
//BACKEND START
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          //horizontal scrollable page
          PageView(
         //BACKEND START
            controller: controller.pageController,
            onPageChanged: controller.updatePackageIndicator,
        //BACKEND END

            children: const [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                titel: TTexts.onBoardingTitle1,
                subTitel: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                titel: TTexts.onBoardingTitle2,
                subTitel: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                titel: TTexts.onBoardingTitle3,
                subTitel: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          //skip button
          const OnBoardingSkip(),

          //dont navigation smooth page indicator
          const OnBoardingDotNavigation(),

          //circule button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
