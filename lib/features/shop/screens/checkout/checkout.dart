import 'package:ecommerce_application_2024/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_application_2024/common/widgets/custom_shapes/containers/circle_container.dart';
import 'package:ecommerce_application_2024/common/widgets/products/cart/coupon_widget.dart';
import 'package:ecommerce_application_2024/common/widgets/success_screen/success_screen.dart';
import 'package:ecommerce_application_2024/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:ecommerce_application_2024/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:ecommerce_application_2024/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:ecommerce_application_2024/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:ecommerce_application_2024/navigation_menu.dart';
import 'package:ecommerce_application_2024/util/constants/colors.dart';
import 'package:ecommerce_application_2024/util/constants/image_strings.dart';
import 'package:ecommerce_application_2024/util/constants/sizes.dart';
import 'package:ecommerce_application_2024/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
          showBackArrow: true,
          title: Text('Order Review',
              style: Theme.of(context).textTheme.headlineSmall)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Items in cart
              const CartItems(showAddRemoveButton: false),
              const SizedBox(height: TSizes.spaceBtwSections),

              // Coupon TextFields
              const CouponCode(),
              const SizedBox(height: TSizes.spaceBtwSections),

              // Billing section
              TCircularContainer(
                showBorder: true,
                padding: const EdgeInsets.all(TSizes.md),
                backgroundColor: dark ? TColors.black : TColors.white,
                child: const Column(
                  children: [
                    // Pricing
                    BillingAmountSection(),
                    SizedBox(height: TSizes.spaceBtwItems),
                    // Divider
                    Divider(), SizedBox(height: TSizes.spaceBtwItems),
                    // Payment methods
                    BillingPaymentSection(),
                    SizedBox(height: TSizes.spaceBtwItems),
                    // Address
                    BillingAddressSection(),
                    SizedBox(height: TSizes.spaceBtwItems),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      // Bottom navigationbar
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () => Get.to(() => SuccessScreen(
                  image: TImages.successfulPaymentIcon,
                  titel: 'Payment Success',
                  subtitel: 'Your item will be shipped soon!',
                  onPressed: () => Get.offAll(() => const NavigationMenu()),
                )),
            child: const Text('Checkout Rs. 15,000')),
      ),
   
     
    );
  }
}
