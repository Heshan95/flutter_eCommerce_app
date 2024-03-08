import 'package:ecommerce_application_2024/common/widgets/custom_shapes/containers/circle_container.dart';
import 'package:ecommerce_application_2024/common/widgets/images/circular_image.dart';
import 'package:ecommerce_application_2024/common/widgets/products/products_cards/products_price_text.dart';
import 'package:ecommerce_application_2024/common/widgets/text/brand_titel_text_with_verified_icon.dart';
import 'package:ecommerce_application_2024/common/widgets/text/product_titel_text.dart';
import 'package:ecommerce_application_2024/util/constants/colors.dart';
import 'package:ecommerce_application_2024/util/constants/enum.dart';
import 'package:ecommerce_application_2024/util/constants/image_strings.dart';
import 'package:ecommerce_application_2024/util/constants/sizes.dart';
import 'package:ecommerce_application_2024/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Price and sale price
        Row(
          children: [
            // Sale tag
            TCircularContainer(
              radious: TSizes.sm,
              backgroundColor: TColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: TSizes.sm, vertical: TSizes.xs),
              child: Text('25%',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(color: TColors.black)),
            ),
            const SizedBox(width: TSizes.spaceBtwItems),
            // Price
            Text('LKR: 2,500.00',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .apply(decoration: TextDecoration.lineThrough)),
            const SizedBox(width: TSizes.spaceBtwItems),
            const TProductPriceText(price: '2,150.00', isLarge: true),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),
        // Titel
        const TProductTitelText(titel: 'Green Nike Sports Shirt'),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        // Stock Status
        Row(
          children: [
            const TProductTitelText(titel: 'Status'),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text("In Stock", style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        // Brand
        Row(
          children: [
            TCircularImage(
              image: TImages.shoeIcon,
              width: 32,
              height: 32,
              overlyColor: dark ? TColors.white : TColors.black,
            ),
            const TBrandTitelTextWithVerifiedIcon(
                titel: 'NIke', bandTextSize: TextSize.medium),
          ],
        ),
      ],
    );
  }
}
