import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../login/login.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.to(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear)),
        ],
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              ///image
              Image(image:  const AssetImage(TImages.deliveredEmailIllustration),width: THelperFunctions.screenWidth()*0.6,),
              const SizedBox(height: TSize.spaceBtwItems),

              ///title & Subtitle
              Text(TTexts.changeYourPasswordTitle,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center),
              const SizedBox(height: TSize.spaceBtwItems),
              Text(TTexts.changeYourPasswordSubTitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center),
              const SizedBox(height: TSize.spaceBtwItems),

              ///Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed:(){},child: const Text(TTexts.done),),),
              const SizedBox(height: TSize.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(onPressed:(){},child: const Text(TTexts.resendEmail),),),
            ],
          ),
        ),
      ),
    );
  }
}
