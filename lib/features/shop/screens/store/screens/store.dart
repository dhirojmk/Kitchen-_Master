import 'package:flutter/material.dart';
import 'package:kitchen_master/common/appbar/appbar.dart';
import 'package:kitchen_master/common/widgets.login_signup/custom_shapes/containers/search_container.dart';
import 'package:kitchen_master/common/widgets.login_signup/products_cart/cart_menu_icon.dart';
import 'package:kitchen_master/utils/constants/colors.dart';
import 'package:kitchen_master/utils/constants/sizes.dart';
import 'package:kitchen_master/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'Foods',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          TCartCounterIcon(
            onPressed: () {},
            iconColor: Colors.black,
          ),
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: THelperFunctions.isDarkMode(context)
                  ? TColors.black
                  : TColors.light,
              expandedHeight: 440,

              flexibleSpace: Padding(
                padding: EdgeInsets.all(TSize.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: const [
                    /// a Shearch bar
                    SizedBox(height: TSize.spaceBtwItems,),
                    TSearchContainer(text: "Search your Food",showBorder: true,showBackground: false,),
                    SizedBox(height: TSize.spaceBtwItems,),
                  ],
                ),
              ),
            )
          ];
        },
        body: Container(),
      ),
    );
  }
}
