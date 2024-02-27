import 'package:ecommerce_application_2024/util/constants/enum.dart';
import 'package:flutter/material.dart';

class TBrandTitelText extends StatelessWidget {
  const TBrandTitelText({
    super.key,
    this.color,
    required this.titel,
    this.maxLines = 1,
    this.textAlign = TextAlign.center,
    this.brandTextSIze = TextSize.small,
  });
  final Color? color;
  final String titel;
  final int maxLines;
  final TextAlign? textAlign;
  final TextSize brandTextSIze;
  @override
  Widget build(BuildContext context) {
    return Text(
      titel,
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      style: brandTextSIze == TextSize.small
          ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
          : brandTextSIze == TextSize.medium
              ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
              : brandTextSIze == TextSize.large
                  ? Theme.of(context).textTheme.titleLarge!.apply(color: color)
                  : Theme.of(context).textTheme.bodyMedium!.apply(color: color),
    );
  }
}
