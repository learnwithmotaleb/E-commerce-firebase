import 'package:e_commerce_app_firebase/features/screens/signup/verify_email.dart';
import 'package:e_commerce_app_firebase/features/screens/signup/widgets/signup_form.dart';
import 'package:e_commerce_app_firebase/features/screens/signup/widgets/tranm_and_condition_checkbox.dart';
import 'package:e_commerce_app_firebase/utils/constants/colors.dart';
import 'package:e_commerce_app_firebase/utils/constants/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

import '../../../common/widgets/widgets_login_signup/login_divider.dart';
import '../../../common/widgets/widgets_login_signup/login_social_Button.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Title
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              //Form
              const TSignUp_form(),
              const SizedBox(
                height: TSizes.spaceBtwInputFields,
              ),

              //terms and conditions Checkbox
              const TTranAndConditionCheckBox(),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: ()=> Get.to(()=> const VerifyEmailScreen()),
                  child:const Text(TTexts.createAccount),
                ),
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              //Divider
              const TFormDivider(dividerText: TTexts.orSignUpWith),

              //Social button
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
