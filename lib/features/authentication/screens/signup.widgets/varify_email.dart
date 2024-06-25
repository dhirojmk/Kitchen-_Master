import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kitchen_master/common/widgets.login_signup/sucess_screen/success_screen.dart';
import 'package:kitchen_master/features/authentication/screens/login/login.dart';
import 'package:kitchen_master/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class VarifyEmailScreen extends StatelessWidget {
  const VarifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () => Get.offAll(const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              ///image
              Image(
                image: const AssetImage(TImages.deliveredEmailIllustration),
                width: THelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: TSize.spaceBtwItems),

              ///title & Subtitle
              Text(TTexts.confirmEmail,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: TSize.spaceBtwItems),
              Text('swavenir.systems@gmail.com',
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center),
              const SizedBox(height: TSize.spaceBtwItems),
              Text(TTexts.confirmEmailSubTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: TSize.spaceBtwItems),

              ///Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(() =>  SuccessScreen(
                    image: TImages.staticSuccessIllustration,
                    title: TTexts.yourAccountCreatedTitle,
                    subTitle: TTexts.yourAccountCreatedSubTitle, onPressed: () => Get.to(()=> const LoginScreen()),
                  ),),
                  child: const Text(TTexts.tContinue),
                ),
              ),
              const SizedBox(height: TSize.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
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
