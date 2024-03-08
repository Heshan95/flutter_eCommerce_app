import 'package:ecommerce_application_2024/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_application_2024/common/widgets/products/rating/ratin_bar_indicator.dart';
import 'package:ecommerce_application_2024/features/shop/screens/product_review/widgets/rating_progress_indicator.dart';
import 'package:ecommerce_application_2024/features/shop/screens/product_review/widgets/user_review_card.dart';
import 'package:ecommerce_application_2024/util/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProductsReviewScreen extends StatelessWidget {
  const ProductsReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          const TAppBar(title: Text('Reviews & Rating'), showBackArrow: true),

      // Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  'The reflection of users\' experience regarding goods and services. Ratings are usually presented in a scale from 1 to 5, and reviews are expressed in a text in which photos can be included.'),
              const SizedBox(height: TSizes.spaceBtwItems),

              // Overall Product Ratings
              const OverallProductIndicator(),
              const RatingBarIndicators(rating: 3.5),
              const SizedBox(height: TSizes.xs),
              Text('12,115', style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: TSizes.spaceBtwSections),

              // User riview list
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              
            ],
          ),
        ),
      ),
    );
  }
}
