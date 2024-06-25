import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:kitchen_master/features/authentication/screens/signup.widgets/terms_conditions_checkbox.dart';
import 'package:kitchen_master/features/authentication/screens/signup.widgets/varify_email.dart';

import '../../../../common/widgets.login_signup/login_divider_social/form_divider.dart';
import '../../../../common/widgets.login_signup/login_divider_social/social_buttons.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: TTexts.firstName,
                    prefixIcon: Icon(Iconsax.user_copy),
                  ),
                ),
              ),
              const SizedBox(
                width: TSize.spaceBtwInputFields,
              ),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: TTexts.lastName,
                    prefixIcon: Icon(Iconsax.user_copy),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: TSize.spaceBtwSections,
          ),

          ///username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: TTexts.username,
              prefixIcon: Icon(Iconsax.user_copy),
            ),
          ),
          const SizedBox(
            height: TSize.spaceBtwSections,
          ),

          ///Email
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: TTexts.email,
              prefixIcon: Icon(Iconsax.direct_copy),
            ),
          ),
          const SizedBox(
            height: TSize.spaceBtwSections,
          ),

          ///Phone Number
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: TTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call_copy),
            ),
          ),
          const SizedBox(
            height: TSize.spaceBtwSections,
          ),

          ///Password
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
                labelText: TTexts.password,
                prefixIcon: Icon(Iconsax.password_check_copy),
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),
          const SizedBox(
            height: TSize.spaceBtwSections,
          ),

          ///Term and condition check box
          const TTermsAndConditionCheckbox(),
          const SizedBox(
            height: TSize.spaceBtwSections,
          ),

          ///Sign up  button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const VarifyEmailScreen()),
              child: const Text(TTexts.createAccount),
            ),
          ),
          const SizedBox(
            height: TSize.spaceBtwSections,
          ),

          ///Devider
          TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
          const SizedBox(
            height: TSize.spaceBtwSections,
          ),

          /// Social button
          const TSocialButtons(),
        ],
      ),
    );
  }
}
