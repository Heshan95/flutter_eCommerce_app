import 'package:ecommerce_application_2024/common/widgets/products/cart/add_remove_button.dart';
import 'package:ecommerce_application_2024/common/widgets/products/cart/cart_item.dart';
import 'package:ecommerce_application_2024/common/widgets/products/products_cards/products_price_text.dart';
import 'package:ecommerce_application_2024/util/constants/sizes.dart';
import 'package:flutter/material.dart';

class CartItems extends StatelessWidget {
  const CartItems({
    super.key,
    this.showAddRemoveButton = true,
  });

  final bool showAddRemoveButton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 2,
      separatorBuilder: (_, __) => const SizedBox(
        height: TSizes.spaceBtwSections,
      ),
      itemBuilder: (_, index) => Column(
        children: [
          // Cart item
          const CartItem(),
          if (showAddRemoveButton) const SizedBox(height: TSizes.spaceBtwItems),

          // Add remove button row with total price
          if (showAddRemoveButton)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    // Extra space
                    SizedBox(width: 70),

                    // Add remove buton
                    ProductQtyWithAddAndRemove(),
                  ],
                ),
                // Add Remove products
                TProductPriceText(price: '15,000')
              ],
            )
        ],
      ),
    );
  }
}
