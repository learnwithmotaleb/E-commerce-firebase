import 'package:e_commerce_app_firebase/features/authentication/controller_onboarding/onboarding_controller.dart';
import 'package:e_commerce_app_firebase/features/screens/onBoarding/widgets/onboarding_dot_navigation.dart';
import 'package:e_commerce_app_firebase/features/screens/onBoarding/widgets/onboarding_next_button.dart';
import 'package:e_commerce_app_firebase/features/screens/onBoarding/widgets/onboarding_page.dart';
import 'package:e_commerce_app_firebase/features/screens/onBoarding/widgets/onboarding_skip.dart';
import 'package:e_commerce_app_firebase/utils/constants/device_utility.dart';
import 'package:e_commerce_app_firebase/utils/constants/helper_functions.dart';
import 'package:e_commerce_app_firebase/utils/constants/image_settings.dart';
import 'package:e_commerce_app_firebase/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          //Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subtitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subtitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subtitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          //skip Button
          const OnBoardingSkip(),

          //Dot Navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),

          //Circular Button
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}


