import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kitchen_master/features/authentication/screens/signup.widgets/signup_form.dart';
import 'package:kitchen_master/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                height: 80,
                image: AssetImage(dark ? TImages.lightAppLogo : TImages.darkAppLogo),
              ),
              ///Title
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: TSize.spaceBtwSections,
              ),

              ///Form
              const TSignupForm(),
            ],
          ),
        ),
      ),
    );
  }
}

