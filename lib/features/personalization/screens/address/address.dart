import 'package:ecommerce_application_2024/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_application_2024/features/personalization/screens/address/add_new_address.dart';
import 'package:ecommerce_application_2024/features/personalization/screens/address/widgets/single_address.dart';
import 'package:ecommerce_application_2024/util/constants/colors.dart';
import 'package:ecommerce_application_2024/util/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: TColors.primary,
        onPressed: () => Get.to(() => const AddNewAddressScreen()),
        child: const Icon(Iconsax.add, color: TColors.white),
      ),
      appBar: TAppBar(
        showBackArrow: true,
        title:
            Text('Address', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: const Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            SingleAddress(selectedAddress: false),
            SingleAddress(selectedAddress: true),
          ],
        ),
      ),
    );
  }
}
