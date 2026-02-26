import 'package:flutter/material.dart';

// class CustomSocialButton extends StatelessWidget {
//   final String label;
//   final Widget icon;
//   final VoidCallback onPressed;

//   const CustomSocialButton({
//     super.key,
//     required this.label,
//     required this.icon,
//     required this.onPressed,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return OutlinedButton(
//       onPressed: onPressed,
//       style: OutlinedButton.styleFrom(
//         minimumSize: const Size(345, 48),
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
//         side: BorderSide(
//           color: Theme.of(context).colorScheme.outline,
//           width: 1,
//         ),
//         backgroundColor: Theme.of(context).colorScheme.surface,
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           icon,
//           const SizedBox(width: 8),
//           Text(
//             label,
//             style: Theme.of(context).textTheme.labelLarge?.copyWith(
//               color: Theme.of(context).colorScheme.onSurface,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class CustomSocialButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Widget icon;
  final double iconWidth;
  final double iconHight;

  const CustomSocialButton({
    super.key,
    required this.label,
    required this.onPressed,
    required this.icon,
    this.iconWidth = 24,
    this.iconHight = 24,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        fixedSize: Size(335, 48),

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(24),
        ),
        side: BorderSide(
          width: 2,
          color: Theme.of(context).colorScheme.outline,
        ),
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
