import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class TCircularItom extends StatelessWidget {
  const TCircularItom(
      {super.key,
      required this.icon,
      this.width,
      this.height,
      this.size = TSize.lg,
      this.onPressed,
      this.color,
      this.backgroundColor});

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      right: 0,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: backgroundColor != null
              ? TColors.black.withOpacity(0.0)
              : TColors.white.withOpacity(0.0),
          borderRadius: BorderRadius.circular(100),
        ),
        child: IconButton(
          onPressed: () {},
          icon: IconButton(onPressed: onPressed,icon: Icon(icon,color: color,size: size,),),
        ),
      ),
    );
  }
}
