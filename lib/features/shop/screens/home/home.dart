import 'package:ecommerce_application_2024/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ecommerce_application_2024/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecommerce_application_2024/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:ecommerce_application_2024/features/shop/screens/home/widgets/home_categories.dart';
import 'package:ecommerce_application_2024/util/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
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
          ],
        ),
      ),
    );
  }
}

