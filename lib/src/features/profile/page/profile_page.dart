import 'package:flutter/material.dart';
import 'package:furniture_store_app/src/features/profile/widgets/head_section.dart';
import 'package:furniture_store_app/src/features/profile/widgets/profile_item.dart';
import 'package:furniture_store_app/common/resources/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  static const String routePath = '/profile';

  @override
  Widget build(BuildContext context) {
    Future<void> launchMyUrl(String urlString) async {
      final Uri url = Uri.parse(urlString);
      if (!await launchUrl(url)) {
        throw Exception('Could not launch $url');
      }
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            const HeadSection(),
            const SizedBox(height: 30),

            Text(
              'Profile',
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.start,
            ),
            const ProfileItem(
              leadingIcon: Icons.notifications_none,
              text: 'Notifications',
            ),
            const ProfileItem(
              leadingIcon: Icons.shopping_basket_outlined,
              text: 'My orders',
            ),
            const ProfileItem(
              leadingIcon: Icons.delete_forever_outlined,
              text: 'Delete Account',
            ),

            Text(
              'Settings',
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.start,
            ),
            ProfileItem(
              leadingIcon: Icons.help_outline,
              text: 'FAQ\'s',
              onTap: () => launchMyUrl(Constants.faqURL),
            ),
            ProfileItem(
              leadingIcon: Icons.contact_support_outlined,
              text: 'Help Center',
              onTap: () => launchMyUrl(Constants.helpCenterURL),
            ),
            ProfileItem(
              leadingIcon: Icons.privacy_tip_outlined,
              text: 'Legal & Polices',
              onTap: () => launchMyUrl(Constants.privacy),
            ),

            Text(
              'Log out',
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.start,
            ),
            const ProfileItem(leadingIcon: Icons.logout, text: 'Log out'),
          ],
        ),
      ),
    );
  }
}
