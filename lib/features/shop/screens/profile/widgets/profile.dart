import 'package:ecommerce_application_2024/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_application_2024/common/widgets/images/circular_image.dart';
import 'package:ecommerce_application_2024/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:ecommerce_application_2024/common/widgets/text/section_heading.dart';
import 'package:ecommerce_application_2024/features/shop/screens/profile/widgets/profile_menu.dart';
import 'package:ecommerce_application_2024/util/constants/colors.dart';
import 'package:ecommerce_application_2024/util/constants/image_strings.dart';
import 'package:ecommerce_application_2024/util/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text('Profile'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            // Profile picture
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  const TCircularImage(
                      image: TImages.user, width: 80, height: 80),
                  TextButton(
                      onPressed: () {},
                      child: const Text('Change Profile Picture'))
                ],
              ),
            ),

            // Details
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            const Divider(),
            const SizedBox(height: TSizes.spaceBtwItems),
            const TSectionHeading(
                titel: 'Profile Information', showActionButton: false),
            const SizedBox(height: TSizes.spaceBtwItems),

            TProfileMenu(
              titel: 'Name',
              value: 'Heshan',
              onPressed: () {},
            ),
            TProfileMenu(
              titel: 'Username',
              value: 'HeshanK',
              onPressed: () {},
            ),

            const SizedBox(height: TSizes.spaceBtwItems / 2),
            const Divider(),
            const SizedBox(height: TSizes.spaceBtwItems),
            const TSectionHeading(
                titel: 'Personal Information', showActionButton: false),
            const SizedBox(height: TSizes.spaceBtwItems),

            TProfileMenu(
                titel: 'User ID',
                value: '000991',
                icon: Iconsax.copy,
                onPressed: () {}),
            TProfileMenu(
                titel: 'Email', value: 'sample@gmail.com', onPressed: () {}),
            TProfileMenu(
                titel: 'Phone Number', value: '0777123456', onPressed: () {}),
            TProfileMenu(titel: 'Gender', value: 'Male', onPressed: () {}),
            TProfileMenu(
                titel: 'Date of Birth',
                value: '24 Feb. 1995',
                onPressed: () {}),

            const Divider(),
            const SizedBox(height: TSizes.spaceBtwItems),

            Center(
              child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Close Account',
                    style: TextStyle(color: Colors.red),
                  )),
            ),const SizedBox(height: TSizes.spaceBtwSections),
          ],
        ),
      ),
    );
  }
}
