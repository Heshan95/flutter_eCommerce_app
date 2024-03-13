import 'package:ecommerce_application_2024/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_application_2024/common/widgets/images/round_image.dart';
import 'package:ecommerce_application_2024/common/widgets/products/products_cards/products_card_horizantal.dart';
import 'package:ecommerce_application_2024/common/widgets/text/section_heading.dart';
import 'package:ecommerce_application_2024/util/constants/image_strings.dart';
import 'package:ecommerce_application_2024/util/constants/sizes.dart';
import 'package:flutter/material.dart';

class SubCategories extends StatelessWidget {
  const SubCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(title: Text('Sports'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Banner
              const TRoundImages(
                  width: double.infinity,
                  imageURL: TImages.promoBanner3,
                  applyIamgeRadius: true),
              const SizedBox(height: TSizes.spaceBtwSections),

              // Sub-categories
              Column(
                children: [
                  // Heading
                  TSectionHeading(
                    titel: 'Sport Shirts',
                    onPressed: () {},
                  ),

                  const SizedBox(height: TSizes.spaceBtwItems / 2),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: TSizes.spaceBtwItems),
                        itemBuilder: (context, index) =>
                            const ProductCardHorizantal()),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
