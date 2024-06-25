import 'package:flutter/material.dart';

import '../../../../../common/widgets.login_signup/image_text_widgets/vertical_imge_text.dart';
import '../../../../../common/widgets/login_signup/image_text_widgets/vertical_image_text.dart';
import '../../../../../utils/constants/image_strings.dart';

class THomeCategories extends StatelessWidget {
   const THomeCategories({
    super.key,
  });

  final List<Map<String, String>> categories = const [
    {'image': TImages.cakeIcon, 'title': 'Cakes..'},
    {'image': TImages.burgerIcon, 'title': 'Burger..'},
    {'image': TImages.chickenIcon, 'title': 'Chicken..'},
    {'image': TImages.friedriceIcon, 'title': 'Fried Rice'},
    {'image': TImages.noodleIcon, 'title': 'Noodel..'},
    {'image': TImages.pastaIcon, 'title': 'Pasta..'},
    {'image': TImages.purevegIcon, 'title': 'PureVeg..'},
    {'image': TImages.rollIcon, 'title': 'Rolls..'},
    {'image': TImages.saladIcon, 'title': 'Salad..'},
    // Add more categories as needed
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          final category = categories[index];
          return TVerticalImageText(
            image: category['image']!,
            title: category['title']!,
            onTap: () {
              // Define the action when the item is tapped
            },
          );
        },
      ),
    );
  }
}
