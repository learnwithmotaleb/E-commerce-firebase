import 'package:e_commerce_app_firebase/utils/constants/image_settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/helper_functions.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_strings.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: ()=> Get.back(), icon: Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child:  Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //image
              Image(image:  AssetImage(TImages.productsIllustration),width: THelperFunctions.screenWidth()*0.6,),
              const SizedBox(height: TSizes.spaceBtwSections,),

              //Title and subTitle
              Text(TTexts.changeYourPasswordTitle ,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems,),
              Text(TTexts.changeYourPasswordSubTitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwSections,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){},
                  child: const Text(TTexts.done),

                ),
              ),
              const SizedBox(height: TSizes.spaceBtwItems,),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: (){},
                  child: const Text(TTexts.resendEmail),

                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
