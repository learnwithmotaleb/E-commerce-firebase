import 'package:e_commerce_app_firebase/features/authentication/controller_onboarding/onboarding_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/device_utility.dart';
import '../../../../utils/constants/sizes.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: TDeviceUtils.getAppBarHeight(),
        right: TSizes.defaultSpace,
        child: TextButton(
          onPressed: () => OnBoardingController.instance.skipPage(),
          child: const Text("Skip"),
        ));
  }
}
