import 'package:e_commerce_app_firebase/common/widgets/success_screen/success_screen.dart';
import 'package:e_commerce_app_firebase/features/screens/login/login.dart';
import 'package:e_commerce_app_firebase/utils/constants/helper_functions.dart';
import 'package:e_commerce_app_firebase/utils/constants/image_settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_strings.dart';

class VerifyEmailScreen extends StatefulWidget {
  const VerifyEmailScreen({super.key});

  @override
  State<VerifyEmailScreen> createState() => _VerifyEmailScreenState();
}

class _VerifyEmailScreenState extends State<VerifyEmailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: ()=> Get.offAll(const LoginScreen()), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //image
              Image(image: const AssetImage(TImages.productsIllustration),width: THelperFunctions.screenWidth()*0.6,),
              const SizedBox(height: TSizes.spaceBtwSections,),

              //Title and subTitle
              Text(TTexts.confirmEmail,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems,),
              Text("support@lwmsoftltd.com",style: Theme.of(context).textTheme.labelLarge,textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems,),
              Text(TTexts.confirmEmailSubTitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwSections,),


              //buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: ()=>Get.to(()=>  SuccessScreen(
                    image: TImages.productsIllustration,
                    title: TTexts.yourAccountCreatedTitle,
                    subTitle: TTexts.yourAccountCreatedSubTitle,
                    onPress: ()=> Get.to(() => const LoginScreen()),
                  )),
                  child: const  Text(TTexts.tContinue),

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
