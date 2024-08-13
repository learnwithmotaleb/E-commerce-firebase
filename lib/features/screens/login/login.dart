import 'package:e_commerce_app_firebase/common/styles/spaacing_style.dart';
import 'package:e_commerce_app_firebase/features/screens/login/widgets/login_form.dart';
import 'package:e_commerce_app_firebase/features/screens/login/widgets/login_header.dart';
import 'package:e_commerce_app_firebase/utils/constants/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../common/widgets/widgets_login_signup/login_divider.dart';
import '../../../common/widgets/widgets_login_signup/login_social_Button.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_settings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo Title & sub-title
              TLoginHeader(dark: dark),
              const TLoginForm(),
              ///divider
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!,),
              const SizedBox(height: TSizes.spaceBtwSections,),
              ///footer
              const TSocialButtons()


            ],
          ),
        ),
      ),
    );
  }
}




