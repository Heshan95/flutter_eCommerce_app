import 'package:ecommerce_application_2024/common/widgets/text/section_heading.dart';
import 'package:ecommerce_application_2024/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:ecommerce_application_2024/features/shop/screens/product_details/widgets/product_attribute.dart';
import 'package:ecommerce_application_2024/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:ecommerce_application_2024/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:ecommerce_application_2024/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:ecommerce_application_2024/util/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
// Product image slider
          children: [
            const TProductDetailsScreen(),

// product details
            Padding(
              padding: const EdgeInsets.only(
                  right: TSizes.defaultSpace,
                  bottom: TSizes.defaultSpace,
                  left: TSizes.defaultSpace),
              child: Column(
                children: [
                  // Rating share
                  const TRatingAndShare(),

                  // Price, titel, stock and brand
                  const ProductMetaData(),

                  // Attribute
                  const TProductAttribute(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  // checkout button
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text('Checkout'))),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  // Description
                  const TSectionHeading(
                      titel: 'Description', showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  const ReadMoreText(
                    'Tune in to the Make it Big Podcast — our thought leadership audio series for retailers, entrepreneurs and ecommerce professionals. You\'ll get expert insights, strategies and tactics to help grow your business.',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' Show more',
                    trimExpandedText: ' less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  // Reviews
                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TSectionHeading(
                          titel: 'Reviews (199)', showActionButton: false),
                      IconButton(onPressed: () {}, icon: const Icon(Iconsax.arrow_right_3))
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
