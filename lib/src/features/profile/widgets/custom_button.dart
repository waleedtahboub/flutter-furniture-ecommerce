import 'package:flutter/material.dart';
import 'package:furniture_store_app/common/resources/app_color.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.leadingIcon,
    this.onTap,
  });
  final String text;
  final IconData leadingIcon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(10),

          width: 335,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppColor.onSurface),
          ),
          child: Row(
            children: [
              Icon(leadingIcon, color: Theme.of(context).colorScheme.primary),

              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  text,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const Spacer(),
              Icon(
                Icons.navigate_next_outlined,
                size: 30,
                color: Theme.of(context).colorScheme.primary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
