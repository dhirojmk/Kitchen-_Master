import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:kitchen_master/common/widgets/images/t_rounded_image.dart';
import 'package:kitchen_master/common/widgets/layouts/product_price_text.dart';
import 'package:kitchen_master/utils/helpers/helper_functions.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../styles/rounded_container.dart';
import '../../styles/shadows.dart';
import '../../widgets.login_signup/text/product_title_text.dart';
import '../../widgets/Itoms/t_circular_icons.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    ///Contanner with side paddings,color,edges,radius and shadow
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSize.productImageRadius),
          color: dark ? TColors.darkGray : TColors.white,
        ),
        child: Column(
          children: [
            ///thumblain,Wishlist,Button,discount tag
            TRoundedContainer(
              height: 150,
              padding: const EdgeInsets.all(TSize.sm),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  const TRoundedImage(
                    imageUrl: TImages.productImage1,
                    applyImageRadius: true,
                  ),
                  Positioned(
                    top: 10,
                    child: TRoundedContainer(
                      radius: TSize.sm,
                      backgroundColor: TColors.secondary.withOpacity(0.7),
                      padding: const EdgeInsets.symmetric(
                          horizontal: TSize.sm, vertical: TSize.xs),
                      child: Text(
                        '25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: TColors.black),
                      ),
                    ),
                  ),

                  ///favorite icon Button
                  const TCircularItom(
                    icon: Iconsax.heart,
                    color: Colors.red,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: TSize.spaceBtwItems / 2,
            ),

            ///Details
            Padding(
              padding: const EdgeInsets.only(left: TSize.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TProductTitleText(
                    title: 'Egg Yolk Salard',
                    smallSize: true,
                  ),
                  const SizedBox(
                    height: TSize.spaceBtwItems / 2,
                  ),
                  Row(
                    children: [
                      Text(
                        "Salard",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      const SizedBox(
                        width: TSize.xs,
                      ),
                      const Icon(
                        Iconsax.verify,
                        color: TColors.primary,
                        size: TSize.iconsXs,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: TSize.spaceBtwItems,
                  ),
                ],
              ),
            ),
            Spacer(),

            ///price row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///price
                const Padding(
                  padding: EdgeInsets.only(left: TSize.sm),
                  child: TProductPriceText(
                    price: '15.0',
                  ),
                ),

                ///add to cart
                Container(
                  decoration: const BoxDecoration(
                    color: TColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(TSize.cardRadiusMd),
                      bottomRight: Radius.circular(TSize.productImageRadius),
                    ),
                  ),
                  child: const SizedBox(
                    width: TSize.iconsLg * 1.2,
                    height: TSize.iconsLg * 1.2,
                    child: Center(
                      child: Icon(
                        Iconsax.add_copy,
                        color: TColors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
