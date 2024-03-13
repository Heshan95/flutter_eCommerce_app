import 'package:ecommerce_application_2024/common/widgets/custom_shapes/containers/circle_container.dart';
import 'package:ecommerce_application_2024/common/widgets/icons/circular_icon.dart';
import 'package:ecommerce_application_2024/common/widgets/images/round_image.dart';
import 'package:ecommerce_application_2024/common/widgets/products/products_cards/products_price_text.dart';
import 'package:ecommerce_application_2024/common/widgets/text/brand_titel_text_with_verified_icon.dart';
import 'package:ecommerce_application_2024/common/widgets/text/product_titel_text.dart';
import 'package:ecommerce_application_2024/util/constants/colors.dart';
import 'package:ecommerce_application_2024/util/constants/image_strings.dart';
import 'package:ecommerce_application_2024/util/constants/sizes.dart';
import 'package:ecommerce_application_2024/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductCardHorizantal extends StatelessWidget {
  const ProductCardHorizantal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      width: 310,
      // padding: const EdgeInsets.all(TSizes.sm),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: dark ? TColors.darkGrey : TColors.softGrey,
      ),
      child: Row(
        children: [
          // Thumbnail
          TCircularContainer(
            height: 120,
            padding: const EdgeInsets.all(TSizes.sm),
            backgroundColor: dark ? TColors.dark : TColors.light,
            child: Stack(
              children: [
                // Thumnail image
                const SizedBox(
                  height: 120,
                  width: 120,
                  child: TRoundImages(
                      imageURL: TImages.productImage1, applyIamgeRadius: true),
                ),
                // Slag tag
                Positioned(
                  top: 12,
                  child: TCircularContainer(
                    radious: TSizes.sm,
                    backgroundColor: TColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(
                        horizontal: TSizes.sm, vertical: TSizes.xs),
                    child: Text(
                      '25%',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .apply(color: TColors.black),
                    ),
                  ),
                ),
                // favourite icon button
                const Positioned(
                    top: 0,
                    right: 0,
                    child:
                        CircularIcon(icon: Iconsax.heart5, color: Colors.red)),
              ],
            ),
          ),

          // Details
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(top: TSizes.sm, left: TSizes.sm),
              child: Column(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TProductTitelText(
                          titel: 'Green Nike half sleev shirt',
                          smallSize: true),
                      SizedBox(height: TSizes.spaceBtwItems / 2),
                      TBrandTitelTextWithVerifiedIcon(titel: 'Nike')
                    ],
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Flexible(child: TProductPriceText(price: '15,000')),

                      // Add to cart button
                      Container(
                        decoration: const BoxDecoration(
                            color: TColors.dark,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(TSizes.cardRadiusMd),
                              bottomRight:
                                  Radius.circular(TSizes.productImageRadius),
                            )),
                        child: const SizedBox(
                            width: TSizes.iconLg * 1.2,
                            height: TSizes.iconLg * 1.2,
                            child: Center(
                                child:
                                    Icon(Iconsax.add, color: TColors.white))),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
