import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:kitchen_master/common/widgets.login_signup/custom_shapes/containers/circular_container.dart';
import 'package:kitchen_master/common/widgets/layouts/grid_layout.dart';
import 'package:kitchen_master/features/shop/screens/home/widget/home_appbar.dart';
import 'package:kitchen_master/features/shop/screens/home/widget/home_categories.dart';
import 'package:kitchen_master/features/shop/screens/home/widget/promo_slider.dart';
import 'package:kitchen_master/utils/constants/sizes.dart';

import '../../../../common/products/product_cards/product_card_vertical.dart';
import '../../../../common/widgets.login_signup/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets.login_signup/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets.login_signup/text/section_heading.dart';
import '../../../../common/widgets/images/t_rounded_image.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TPrimaryHeaderContainer(
              child: Column(
                children: [
                  ///App Bar
                  THomeAppBar(),
                  SizedBox(height: TSize.spaceBtwSections),

                  ///Search bar
                  TSearchContainer(
                    text: 'Search your food',
                  ),
                  SizedBox(height: TSize.spaceBtwSections),

                  ///Categories
                  Padding(
                    padding: EdgeInsets.only(left: TSize.defaultSpace),
                    child: Column(
                      children: [
                        SizedBox(height: TSize.spaceBtwItems),
                        TSectionHeading(
                          title: 'Popular Foods',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(height: TSize.spaceBtwItems),

                        /// Scroll Category
                        THomeCategories()
                      ],
                    ),
                  ),
                ],
              ),
            ),

            ///Body part
            Padding(
              padding: const EdgeInsets.all(TSize.defaultSpace),
              child: Column(
                children: [
                  const TPromoSlider(banners: [
                    TImages.promoBanner1,
                    TImages.promoBanner2,
                    TImages.promoBanner3,
                    TImages.promoBanner4,
                    TImages.promoBanner4,
                    TImages.promoBanner5
                  ]),
                  const SizedBox(height: TSize.spaceBtwSections),
                  ///heading
                   TSectionHeading(title: 'Popular Foods' ,onPressed: (){},),
                  const SizedBox(height: TSize.spaceBtwItems,),

                  ///product product
                  TGridLayout(itemCount: 2, itemBuilder: (_,index)=>const TProductCardVertical())

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
