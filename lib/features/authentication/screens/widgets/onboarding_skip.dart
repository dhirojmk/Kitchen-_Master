import 'package:flutter/material.dart';
import 'package:kitchen_master/features/authentication/controllers/onboarding_controller.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utillity.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSize.defaultSpace,
      child: TextButton(onPressed: () => OnBoardingController.instance.skipPage(), child: const Text("Skip")),
    );
  }
}
