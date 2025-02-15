import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utillity.dart';
import '../../../../utils/helpers/helper_functions.dart';

class TSearchContainer extends StatelessWidget {
  const TSearchContainer({
    super.key,
    required this.text,
    this.icon=Iconsax.search_normal_copy,
    this.showBackground=true,
    this.showBorder=true,
    this.onTap,
  });
  final String text;
  final IconData ? icon;
  final bool showBackground,showBorder;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final dark =  THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: TSize.defaultSpace),
        child: Container(
            width: TDeviceUtils.getScreenWidth(context),
            padding: const EdgeInsets.all(TSize.md),
            decoration: BoxDecoration(
              color: showBackground ? dark ?  TColors.dark : TColors.light : Colors.transparent,
              borderRadius:
              BorderRadius.circular(TSize.cardRadiusLg),
              border: showBorder ? Border.all(color: TColors.Gray) : null,
            ),
            child: Row(
              children: [
                Icon(
                  icon,
                  color: TColors.Gray,
                ),
                const SizedBox(width: TSize.spaceBtwItems),
                // Adjust width to control spacing
                Opacity(
                  opacity: 0.4,
                  // Adjust the opacity value as needed
                  child: Text(
                    text,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
