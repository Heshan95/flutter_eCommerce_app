import 'package:ecommerce_application_2024/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ecommerce_application_2024/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecommerce_application_2024/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce_application_2024/common/widgets/products/products_cards/products_card_vertical.dart';
import 'package:ecommerce_application_2024/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:ecommerce_application_2024/features/shop/screens/home/widgets/home_categories.dart';
import 'package:ecommerce_application_2024/features/shop/screens/home/widgets/promot_slider.dart';
import 'package:ecommerce_application_2024/util/constants/image_strings.dart';
import 'package:ecommerce_application_2024/util/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TPrimaryHeaderContainer(
                child: Column(
              children: [
                // Appbar
                THomeAppBar(),
                SizedBox(height: TSizes.spaceBtwSections),

                // Search bar
                TSearchContainer(text: 'Search In Store'),
                SizedBox(height: TSizes.spaceBtwSections),

                // Categaries
                THomeCategories(),
              ],
            )),

            // Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const TPromoteSlider(banners: [
                    TImages.promoBanner1,
                    TImages.promoBanner2,
                    TImages.promoBanner3,
                  ]),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  //Popular products
                  TGridLayout(
                    itemCount: 6,
                    itemBuilder: (_, index) => const TProductCardVertical(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
