import 'package:ecommerce_application_2024/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_application_2024/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:ecommerce_application_2024/common/widgets/icons/circular_icon.dart';
import 'package:ecommerce_application_2024/common/widgets/images/round_image.dart';
import 'package:ecommerce_application_2024/util/constants/colors.dart';
import 'package:ecommerce_application_2024/util/constants/image_strings.dart';
import 'package:ecommerce_application_2024/util/constants/sizes.dart';
import 'package:ecommerce_application_2024/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TProductDetailsScreen extends StatelessWidget {
  const TProductDetailsScreen({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TCurvedEdgeWidget(
      child: Container(
        color: dark ? TColors.darkerGrey : TColors.light,
        child: Stack(
          children: [
            // Main large image
            const SizedBox(
                height: 400,
                child: Padding(
                  padding:
                      EdgeInsets.all(TSizes.productImageRadius * 2),
                  child: Center(
                      child: Image(
                          image: AssetImage(TImages.productImage5))),
                )),
    
            // Image slider
            Positioned(
              right: 0,
              bottom: 30,
              left: TSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  separatorBuilder: (_, __) => const SizedBox(
                    width: TSizes.spaceBtwItems,
                  ),
                  itemCount: 4,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemBuilder: (_, index) => TRoundImages(
                      width: 80,
                      backgroundColor:
                          dark ? TColors.dark : TColors.white,
                      border: Border.all(color: TColors.primary),
                      padding: const EdgeInsets.all(TSizes.sm),
                      imageURL: TImages.productImage3),
                ),
              ),
            ),
    
            // Appbar icon
            const TAppBar(
              showBackArrow: true,
              actions: [
                CircularIcon(icon: Iconsax.heart5, color: Colors.red)
              ],
            )
          ],
        ),
      ),
    );
  }
}
