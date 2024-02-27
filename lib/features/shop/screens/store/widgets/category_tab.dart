import 'package:ecommerce_application_2024/common/widgets/brand/brand_showcase.dart';
import 'package:ecommerce_application_2024/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce_application_2024/common/widgets/products/products_cards/products_card_vertical.dart';
import 'package:ecommerce_application_2024/common/widgets/text/section_heading.dart';
import 'package:ecommerce_application_2024/util/constants/image_strings.dart';
import 'package:ecommerce_application_2024/util/constants/sizes.dart';
import 'package:flutter/material.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Brand
              const TBrandShowCase(images: [
                TImages.productImage1,
                TImages.productImage2,
                TImages.productImage3
              ]),
              const TBrandShowCase(images: [
                TImages.productImage1,
                TImages.productImage2,
                TImages.productImage3
              ]),
              const SizedBox(height: TSizes.spaceBtwItems),
              // Product you may like
              TSectionHeading(titel: 'You might like', onPressed: () {}),
              const SizedBox(height: TSizes.spaceBtwItems),

              TGridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => const TProductCardVertical()),
            ],
          ),
        ),
      ],
    );
  }
}
