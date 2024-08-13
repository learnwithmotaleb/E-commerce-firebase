import 'package:e_commerce_app_firebase/features/authentication/controller_onboarding/onboarding_controller.dart';
import 'package:e_commerce_app_firebase/utils/constants/colors.dart';
import 'package:e_commerce_app_firebase/utils/constants/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/device_utility.dart';
import '../../../../utils/constants/sizes.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
        right: TSizes.defaultSpace,
        bottom: TDeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(
          onPressed: ()=> OnBoardingController.instance.nextPage(),
          style: ElevatedButton.styleFrom(shape: const CircleBorder(),backgroundColor: dark ? TColors.primaryColor : Colors.black),
          child: const Icon(Iconsax.arrow_right_3),
        ));
  }
}
