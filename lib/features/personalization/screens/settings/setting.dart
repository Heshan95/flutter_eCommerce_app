import 'package:ecommerce_application_2024/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_application_2024/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ecommerce_application_2024/common/widgets/list_tiles/setting_menu_tile.dart';
import 'package:ecommerce_application_2024/common/widgets/list_tiles/user_profile.dart';
import 'package:ecommerce_application_2024/common/widgets/text/section_heading.dart';
import 'package:ecommerce_application_2024/util/constants/colors.dart';
import 'package:ecommerce_application_2024/util/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // -- Header
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  TAppBar(
                    title: Text(
                      'Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: TColors.white),
                    ),
                  ),
                  const TUserProfileTile(),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),

            // -- Body
             Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const TSectionHeading(titel: 'Account Heading', showActionButton: false,),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  TSettingMenuTile(icon: Iconsax.home,titel: 'My Address',subTitel: 'Set shipping address', onTap: () {},),
                  TSettingMenuTile(icon: Iconsax.shopping_cart,titel: 'My Cart',subTitel: 'Add, remove products and move to checkout', onTap: () {},),
                  TSettingMenuTile(icon: Iconsax.bag_tick,titel: 'My Orders',subTitel: 'In-progress and Completed orders', onTap: () {},),
                  TSettingMenuTile(icon: Iconsax.discount_shape,titel: 'My Coupons',subTitel: 'List of all the discounted coupons', onTap: () {},),
                  TSettingMenuTile(icon: Iconsax.notification,titel: 'Notifications',subTitel: 'Set any kind of notification message', onTap: () {},),
                  TSettingMenuTile(icon: Iconsax.security_card,titel: 'Account Privacy',subTitel: 'Manage data usage and connected accounts', onTap: () {},),
                
                // App setting
                const SizedBox(height: TSizes.spaceBtwSections),
                const TSectionHeading(titel: 'App Setting', showActionButton: false),
                const SizedBox(height: TSizes.spaceBtwSections),
                  TSettingMenuTile(icon: Iconsax.document_upload,titel: 'Load Data',subTitel: 'Upload data to your Cloud firebase', trailing: Switch(value: true, onChanged: (value){}),),
                  TSettingMenuTile(icon: Iconsax.security_user,titel: 'Safe Mode',subTitel: 'Search result is safe for all ages', trailing: Switch(value: false, onChanged: (value){}),),
                  TSettingMenuTile(icon: Iconsax.image,titel: 'HD Image quality',subTitel: 'Set image quality to be seen', trailing: Switch(value: false, onChanged: (value){}),),
                const SizedBox(height: TSizes.spaceBtwSections),
                SizedBox(
                  width: double.infinity,child: OutlinedButton(onPressed: (){}, child: const Text('Logout')),
                ),
                const SizedBox(height: TSizes.spaceBtwSections*2.5),
                 ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
