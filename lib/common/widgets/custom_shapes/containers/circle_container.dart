import 'package:ecommerce_application_2024/util/constants/colors.dart';
import 'package:ecommerce_application_2024/util/constants/sizes.dart';
import 'package:flutter/material.dart';

// class TCircularContainer extends StatelessWidget {
//   const TCircularContainer({
//     super.key,
//     this.width = 400,
//     this.height = 400,
//     this.radious = 400,
//     this.padding = 0,
//     this.child,
//     this.backgroundColor = TColors.white,
//     this.margin,
//   });

//   final double? width;
//   final double? height;
//   final double radious;
//   final double padding;
//   final EdgeInsets? margin;
//   final Widget? child;
//   final Color backgroundColor;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: width,
//       height: height,
//       padding: EdgeInsets.all(padding),
//       margin: margin,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(radious),
//         color: backgroundColor,
//       ),
//       child: child,
//     );
//   }
// }

class TCircularContainer extends StatelessWidget {
  const TCircularContainer({
    super.key,
    this.width,
    this.height,
    this.radious = TSizes.cardRadiusLg,
    this.padding,
    this.child,
    this.backgroundColor = TColors.white,
    this.margin,
    this.showBorder = false,
    this.borderColor = TColors.borderPrimary,
  });

  final double? width;
  final double? height;
  final double radious;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Widget? child;
  final Color backgroundColor;
  final Color borderColor;
  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radious),
        color: backgroundColor,
        border: showBorder ? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
}
