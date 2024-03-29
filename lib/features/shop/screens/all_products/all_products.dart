import 'package:ecommerce_application_2024/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_application_2024/common/widgets/products/sortable/sortable_products.dart';
import 'package:ecommerce_application_2024/util/constants/sizes.dart';
import 'package:flutter/material.dart';

class AllProductsScreen extends StatelessWidget {
  const AllProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar:
          TAppBar(title: Text('Popular Products'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: SortableProducts(),
        ),
      ),
    );
  }
}
