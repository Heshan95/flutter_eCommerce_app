import 'package:ecommerce_application_2024/common/widgets/text/brand_titel_text.dart';
import 'package:ecommerce_application_2024/util/constants/colors.dart';
import 'package:ecommerce_application_2024/util/constants/enum.dart';
import 'package:ecommerce_application_2024/util/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TBrandTitelTextWithVerifiedIcon extends StatelessWidget {
  const TBrandTitelTextWithVerifiedIcon({
    super.key,
    required this.titel,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = TColors.primary,
    this.textAlign = TextAlign.center,
    this.bandTextSize = TextSize.small,
  });

  final String titel;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSize bandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: TBrandTitelText(
            titel: titel,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSIze: bandTextSize,
          ),
        ),
        const SizedBox(width: TSizes.xs),
        const Icon(
          Iconsax.verify5,
          color: TColors.primary,
          size: TSizes.iconXs,
        )
      ],
    );
  }
}
