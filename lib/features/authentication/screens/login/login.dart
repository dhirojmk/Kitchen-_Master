import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kitchen_master/common/styles/spacing_styles.dart';
import 'package:kitchen_master/common/widgets.login_signup/login_divider_social/form_divider.dart';
import 'package:kitchen_master/features/authentication/screens/login/widgets/login_form.dart';
import 'package:kitchen_master/features/authentication/screens/login/widgets/login_header.dart';
import 'package:kitchen_master/utils/constants/sizes.dart';
import 'package:kitchen_master/utils/helpers/helper_functions.dart';

import '../../../../common/widgets.login_signup/login_divider_social/social_buttons.dart';
import '../../../../utils/constants/text_strings.dart';

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
              ///logo,title and subtitle
              const TLoginHeader(),

              ///Form
              const TLoginForm(),

              ///Devider
              TFormDivider(dividerText:TTexts.orSignInWith.capitalize!),

              const SizedBox(
                height: TSize.spaceBtwSections,
              ),

              ///Footer
              const TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
