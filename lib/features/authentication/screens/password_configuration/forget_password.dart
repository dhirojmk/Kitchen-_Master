import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:kitchen_master/features/authentication/screens/password_configuration/reset_password.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///Heading
              Text(
                TTexts.forgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: TSize.spaceBtwItems),
              Text(
                TTexts.forgetPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(height: TSize.spaceBtwSections * 2),

              ///TextField
              TextFormField(
                decoration: const InputDecoration(
                  labelText: TTexts.email,
                  prefixIcon: Icon(Iconsax.direct_right_copy),
                ),
              ),
              const SizedBox(height: TSize.spaceBtwSections),

              ///submit Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () =>Get.to(()=>const ResetPassword()),
                  child: const Text(TTexts.submit),
                ),
              ),
            ],
          )),
    );
  }
}
