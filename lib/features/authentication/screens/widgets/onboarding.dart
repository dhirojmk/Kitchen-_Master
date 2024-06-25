
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:kitchen_master/features/authentication/controllers/onboarding_controller.dart';
import 'package:kitchen_master/features/authentication/screens/widgets/onboarding_dot_navigation.dart';
import 'package:kitchen_master/features/authentication/screens/widgets/onboarding_next_button.dart';
import 'package:kitchen_master/features/authentication/screens/widgets/onboarding_page.dart';
import 'package:kitchen_master/features/authentication/screens/widgets/onboarding_skip.dart';
import 'package:kitchen_master/utils/constants/image_strings.dart';
import 'package:kitchen_master/utils/constants/sizes.dart';
import 'package:kitchen_master/utils/device/device_utillity.dart';
import 'package:kitchen_master/utils/theme/custom_themes/text_themes.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          ///Horizontal scrollable page
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          ///Skip Button

          const OnBoardingSkip(),

          ///Dot navigation smooth page indicator
          const OnBoardingDotNavigation(),

          ///Circular Button
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}

