import 'package:flutter/material.dart';
import 'package:furniture_store_app/common/resources/app_color.dart';

class CustomSocialButton extends StatelessWidget {
  const CustomSocialButton({
    super.key,
    required this.label,
    required this.onPressed,
    required this.icon,
    this.iconWidth = 24,
    this.iconHight = 24,
  });

  final String label;
  final VoidCallback onPressed;
  final Widget icon;
  final double iconWidth;
  final double iconHight;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        fixedSize: const Size(335, 48),

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(24),
        ),
        side: const BorderSide(width: 1, color: AppColor.iconColor),
      ),
      onPressed: onPressed,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: iconWidth, height: iconHight, child: icon),
          const SizedBox(width: 8),
          Text(label, style: Theme.of(context).textTheme.labelLarge),
        ],
      ),
    );
  }
}
