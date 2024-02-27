import 'package:ecommerce_application_2024/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_application_2024/common/widgets/custom_shapes/containers/circle_container.dart';
import 'package:ecommerce_application_2024/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecommerce_application_2024/common/widgets/images/circular_image.dart';
import 'package:ecommerce_application_2024/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce_application_2024/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:ecommerce_application_2024/common/widgets/text/brand_titel_text_with_verified_icon.dart';
import 'package:ecommerce_application_2024/common/widgets/text/section_heading.dart';
import 'package:ecommerce_application_2024/util/constants/colors.dart';
import 'package:ecommerce_application_2024/util/constants/enum.dart';
import 'package:ecommerce_application_2024/util/constants/image_strings.dart';
import 'package:ecommerce_application_2024/util/constants/sizes.dart';
import 'package:ecommerce_application_2024/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          TCartCounterIcon(
            onPressed: () {},
          ),
        ],
      ),
      body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: THelperFunctions.isDarkMode(context)
                    ? TColors.black
                    : TColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      // Search Bar
                      const SizedBox(height: TSizes.spaceBtwItems),
                      const TSearchContainer(
                        text: 'Search in Store',
                        shwBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(height: TSizes.spaceBtwSections),

                      // Feature brand
                      const TSectionHeading(
                          titel: 'Featured Brands', onPressed: null),
                      const SizedBox(
                        height: TSizes.spaceBtwItems / 1.5,
                      ),

                     TGridLayout(itemCount: 4, mainAxisExtent: 80, itemBuilder: (_, index){
                      return  GestureDetector(
                        onTap: () {
                          
                        },
                        child: TCircularContainer(
                          padding: const EdgeInsets.all(TSizes.sm),
                          showBorder: true,
                          backgroundColor: Colors.transparent,
                          child: Row(
                            children: [
                              // Icon
                              Flexible(
                                child: TCircularImage(
                                  isNetworkImage: false,
                                  image: TImages.clothIcon,
                                  backgroundColor: Colors.transparent,
                                  overlyColor: THelperFunctions.isDarkMode(context)
                                      ? TColors.white
                                      : TColors.dark,
                                ),
                              ),
                              const SizedBox(
                                width: TSizes.spaceBtwItems / 2,
                              ),
                        
                              // Text
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const TBrandTitelTextWithVerifiedIcon(
                                        titel: 'Nike',
                                        bandTextSize: TextSize.large),
                                    Text(
                                      '256 Products',
                                      overflow: TextOverflow.ellipsis,
                                      style:
                                          Theme.of(context).textTheme.labelMedium,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                     })
                    ],
                  ),
                ),
              ),
            ];
          },
          body: Container()),
    );
  }
}
