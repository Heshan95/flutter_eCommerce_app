import 'package:ecommerce_application_2024/common/widgets/chips/choice_chips.dart';
import 'package:ecommerce_application_2024/common/widgets/custom_shapes/containers/circle_container.dart';
import 'package:ecommerce_application_2024/common/widgets/products/products_cards/products_price_text.dart';
import 'package:ecommerce_application_2024/common/widgets/text/product_titel_text.dart';
import 'package:ecommerce_application_2024/common/widgets/text/section_heading.dart';
import 'package:ecommerce_application_2024/util/constants/colors.dart';
import 'package:ecommerce_application_2024/util/constants/sizes.dart';
import 'package:ecommerce_application_2024/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TProductAttribute extends StatelessWidget {
  const TProductAttribute({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        // Selected attribute pricing and description
        TCircularContainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Column(
            children: [
              // Titel, price, stock status
              Row(
                children: [
                  const TSectionHeading(
                      titel: 'Variation', showActionButton: false),
                  const SizedBox(width: TSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const TProductTitelText(
                              titel: 'Price :', smallSize: true),
                          const SizedBox(width: TSizes.sm),
                          // Actual price
                          Text('Rs: 2,500.00',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .apply(
                                      decoration: TextDecoration.lineThrough)),
                          const SizedBox(width: TSizes.sm),
                        ],
                      ),
                      const Row(
                        children: [
                          TProductTitelText(titel: '      ', smallSize: true),
                          SizedBox(width: TSizes.defaultSpace),
                          // Sale price
                          TProductPriceText(price: '2,150.00')
                        ],
                      ),
                      Row(
                        children: [
                          const TProductTitelText(
                              titel: 'Stock :', smallSize: true),
                          const SizedBox(width: TSizes.sm),
                          Text("In Stock",
                              style: Theme.of(context).textTheme.titleMedium),
                          const SizedBox(width: TSizes.spaceBtwItems),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: TSizes.sm),
              const TProductTitelText(
                  titel:
                      'This is description of the product, Make sure your Purches items.',
                  smallSize: true,
                  maxLines: 4)
            ],
          ),
        ),

        const SizedBox(height: TSizes.spaceBtwItems),
        // Attribute
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(
              titel: 'Colors',
              showActionButton: false,
            ),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(
                    text: 'Green', select: true, onSelected: (value) {}),
                TChoiceChip(
                    text: 'Blue', select: false, onSelected: (value) {}),
                TChoiceChip(
                    text: 'Yellow', select: false, onSelected: (value) {}),
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(titel: 'Size', showActionButton: false,),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(
                    text: 'EU 34', select: true, onSelected: (value) {}),
                TChoiceChip(
                    text: 'EU 36', select: false, onSelected: (value) {}),
                TChoiceChip(
                    text: 'EU 38', select: false, onSelected: (value) {}),
              ],
            )
          ],
        ),
      ],
    );
  }
}
