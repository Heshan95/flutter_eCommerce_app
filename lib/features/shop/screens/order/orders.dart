import 'package:ecommerce_application_2024/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_application_2024/features/shop/screens/order/widets/order_list.dart';
import 'package:ecommerce_application_2024/util/constants/sizes.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
          title: Text('My Oders',
              style: Theme.of(context).textTheme.headlineSmall),
          showBackArrow: true),
      body: const Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),

        // Oder list
        child: OrderListView(),
      ),
    );
  }
}
