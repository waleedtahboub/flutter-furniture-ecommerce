import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture_store_app/src/features/auth/login/page/login_page.dart';
import 'package:furniture_store_app/src/features/auth/provider/signout_notifier.dart';
import 'package:furniture_store_app/src/features/profile/widgets/head_section.dart';
import 'package:furniture_store_app/src/features/profile/widgets/profile_item.dart';
import 'package:furniture_store_app/common/resources/constants.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});
  static const String routePath = '/profile';
  Future<void> launchMyUrl(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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

            ProfileItem(
              leadingIcon: Icons.logout,
              text: 'Log out',
              onTap: () async {
                final success = await ref
                    .read(signoutProvider.notifier)
                    .signOut();
                if (!context.mounted) return;
                if (success == true) {
                  context.go(LoginPage.routePath);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Failed to log out. Please try again.'),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
