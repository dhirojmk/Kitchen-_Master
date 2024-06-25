import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:kitchen_master/features/shop/controllers/home_controller.dart';

import '../../../../../common/widgets.login_signup/custom_shapes/containers/circular_container.dart';
import '../../../../../common/widgets/images/t_rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key,
    required this.banners,
  });
final List<String>banners;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index, _) =>
                  controller.updatePageIndicator(index)),
          items:  banners.map((url) => TRoundedImage(imageUrl: url)).toList(),
        ),
        const SizedBox(
          height: TSize.spaceBtwItems,
        ),
        Center(
          child: Obx(
              ()=> Row(
                mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i <= 4; i++)
                   TCircularContainer(
                    width: 20,
                    height: 4,
                    margin: const EdgeInsets.only(right: 8),
                    backgroundColor: controller.carousalCurrentIndex.value == i ? TColors.primary : TColors.Gray,
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
