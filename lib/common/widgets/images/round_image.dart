import 'package:ecommerce_application_2024/util/constants/colors.dart';
import 'package:ecommerce_application_2024/util/constants/sizes.dart';
import 'package:flutter/material.dart';

class TRoundImages extends StatelessWidget {
  const TRoundImages({
    super.key,
    this.width,
    this.height,
    required this.imageURL,
    this.applyIamgeRadius = true,
    this.border,
    this.backgroundColor = TColors.light,
    this.fit = BoxFit.contain,
    this.padding,
    this.isNetworkImage = false,
    this.onPressed,
    this.borderRadius = TSizes.md,
  });

  final double? width, height;
  final String imageURL;
  final bool applyIamgeRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: ClipRRect(
            borderRadius: applyIamgeRadius
                ? BorderRadius.circular(TSizes.md)
                : BorderRadius.zero,
            child: Image(
                fit: fit,
                image: isNetworkImage
                    ? NetworkImage(imageURL)
                    : AssetImage(imageURL) as ImageProvider)),
      ),
    );
  }
}
