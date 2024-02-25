import 'package:ecommerce_application_2024/common/widgets/image_text_widget/vertical_image_text.dart';
import 'package:ecommerce_application_2024/common/widgets/text/section_heading.dart';
import 'package:ecommerce_application_2024/util/constants/image_strings.dart';
import 'package:ecommerce_application_2024/util/constants/sizes.dart';
import 'package:flutter/material.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: TSizes.defaultSpace),
      child: Column(
        children: [
          // Heading
          const TSectionHeading(
            titel: 'Popular Categories',
            showActionButton: false,
            textColor: Colors.white,
          ),
          const SizedBox(height: TSizes.spaceBtwItems),
    
          // Categories
          SizedBox(
            height: 80.0,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 6,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return TVerticalImageText(
                  image: TImages.shoeIcon,
                  titel: 'Shoes',
                  onTap: () {},
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

