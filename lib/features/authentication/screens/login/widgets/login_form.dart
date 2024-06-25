import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:kitchen_master/features/authentication/screens/password_configuration/forget_password.dart';

import '../../../../../navigation_menu.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../signup.widgets/signup.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSize.spaceBtwSections),
        child: Column(
          children: [
            ///Email
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: TTexts.email),
            ),
            const SizedBox(
              height: TSize.spaceBtwInputFields,
            ),

            ///Password
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: TTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: TSize.spaceBtwInputFields / 2),

            ///Rememeber Me And Forgot PassWord
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///Rememberme
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(TTexts.rememberMe),
                  ],
                ),

                ///Forgotpassword
                TextButton(
                  onPressed: ()=> Get.to(()=>const ForgetPassword()),
                  child: const Text(TTexts.forgetPassword),
                ),
              ],
            ),
            const SizedBox(height: TSize.spaceBtwInputFields / 2),

            ///Sign In Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const NavigationMenu()),
                child: const Text(TTexts.signIn),
              ),
            ),
            const SizedBox(
              height: TSize.spaceBtwItems,
            ),

            ///Create Account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => const SignupScreen()),
                child: const Text(TTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

