import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';

class TSocialButtons extends StatelessWidget {
  const TSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: TColors.Gray),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: TSize.iconsMd,
              height: TSize.iconsMd,
              image: AssetImage(TImages.google),
            ),
          ),
        ),
        const SizedBox(
          width: TSize.spaceBtwItems,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: TColors.Gray),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: TSize.iconsMd,
              height: TSize.iconsMd,
              image: AssetImage(TImages.facebook),
            ),
          ),
        ),
      ],
    );
  }
}

