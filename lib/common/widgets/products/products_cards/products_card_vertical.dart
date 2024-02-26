import 'package:ecommerce_application_2024/common/styles/shadow.dart';
import 'package:ecommerce_application_2024/common/widgets/custom_shapes/containers/circle_container.dart';
import 'package:ecommerce_application_2024/common/widgets/icons/t_circular_icon.dart';
import 'package:ecommerce_application_2024/common/widgets/images/round_image.dart';
import 'package:ecommerce_application_2024/common/widgets/products/products_cards/products_price_text.dart';
import 'package:ecommerce_application_2024/common/widgets/text/product_titel_text.dart';
import 'package:ecommerce_application_2024/util/constants/colors.dart';
import 'package:ecommerce_application_2024/util/constants/image_strings.dart';
import 'package:ecommerce_application_2024/util/constants/sizes.dart';
import 'package:ecommerce_application_2024/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.vericalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkGrey : TColors.white,
        ),
        child: Column(
          children: [
            // Thumnil button, wishlist, discount tag
            TCircularContainer(
              height: 180,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  const TRoundImages(
                      imageURL: TImages.productImage1, applyIamgeRadius: true),
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
                  const Positioned(
                      top: 0,
                      right: 0,
                      child: TCircularIcon(
                          icon: Iconsax.heart5, color: Colors.red)),
                ],
              ),
            ),

            const SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),

            // Details
            Padding(
              padding: const EdgeInsets.only(left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TProductTitelText(
                      titel: 'Green Nike AIR shoes', smallSize: true),
                  const SizedBox(
                    height: TSizes.spaceBtwItems / 2,
                  ),
                  Row(
                    children: [
                      Text(
                        'Nike',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      const SizedBox(width: TSizes.xs),
                      const Icon(
                        Iconsax.verify5,
                        color: TColors.primary,
                        size: TSizes.iconXs,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TProductPriceText(price: '35,000'),
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
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
