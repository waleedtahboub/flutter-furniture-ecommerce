import 'package:flutter/material.dart';
import 'package:furniture_store_app/common/resources/app_color.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem({
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
        onTap: () {},
        child: SizedBox(
          height: 53,
          width: 335,
          child: ListTile(
            onTap: onTap,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: const BorderSide(color: AppColor.onSurface),
            ),
            leading: Icon(
              leadingIcon,
              color: Theme.of(context).colorScheme.primary,
            ),
            horizontalTitleGap: 8.0,
            title: Text(
              text,
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w400),
            ),
            trailing: Icon(
              Icons.navigate_next_outlined,
              size: 30,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
      ),
    );
  }
}
