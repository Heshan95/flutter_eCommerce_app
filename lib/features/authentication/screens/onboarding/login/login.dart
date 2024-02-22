import 'package:ecommerce_application_2024/common/styles/spacing_style.dart';
import 'package:ecommerce_application_2024/common/widgets/login_signup/form_divider.dart';
import 'package:ecommerce_application_2024/common/widgets/login_signup/social_button.dart';
import 'package:ecommerce_application_2024/features/authentication/screens/onboarding/login/widgets/login_form.dart';
import 'package:ecommerce_application_2024/features/authentication/screens/onboarding/login/widgets/login_header.dart';
import 'package:ecommerce_application_2024/util/constants/sizes.dart';
import 'package:ecommerce_application_2024/util/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //Logo, titels and subtitles
              const TLoginHeader(),

              //Form
              const TLoginForm(),

              //Divider
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwItems),

              //Footer
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
