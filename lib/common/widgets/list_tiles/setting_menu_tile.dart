import 'package:ecommerce_application_2024/util/constants/colors.dart';
import 'package:flutter/material.dart';

class TSettingMenuTile extends StatelessWidget {
  const TSettingMenuTile(
      {super.key,
      required this.icon,
      required this.titel,
      required this.subTitel,
      this.trailing,
      this.onTap});

  final IconData icon;
  final String titel, subTitel;
  final Widget? trailing;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, size: 28, color: TColors.primary),
      title: Text(titel, style: Theme.of(context).textTheme.titleMedium),
      subtitle: Text(subTitel, style: Theme.of(context).textTheme.labelMedium),
      trailing: trailing,
      onTap: onTap,
    );
  }
}
