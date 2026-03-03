// ignore_for_file: file_names
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:furniture_store_app/common/resources/app_color.dart';
import 'package:furniture_store_app/common/resources/constants.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:furniture_store_app/common/resources/constants.dart';
// import 'package:url_launcher/url_launcher.dart';

class CustomTermsAndPrivacyRichText extends StatefulWidget {
  const CustomTermsAndPrivacyRichText({super.key});

  @override
  State<CustomTermsAndPrivacyRichText> createState() =>
      _CustomTermsAndPrivacyRichtextState();
}

class _CustomTermsAndPrivacyRichtextState
    extends State<CustomTermsAndPrivacyRichText> {
  final Uri privacyUrl = Uri.parse(Constants.privacy);
  final Uri termsAndConditionsUrl = Uri.parse(Constants.termsAndConditions);

  late final TapGestureRecognizer _termsRecognizer = TapGestureRecognizer()
    ..onTap = () async {
      await launchUrl(
        termsAndConditionsUrl,
        mode: LaunchMode.externalApplication,
      );
    };
  late final TapGestureRecognizer _privacyRecognizer = TapGestureRecognizer()
    ..onTap = () async {
      await launchUrl(privacyUrl, mode: LaunchMode.externalApplication);
    };

  @override
  void dispose() {
    _termsRecognizer.dispose();
    _privacyRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.justify,
      text: TextSpan(
        style: Theme.of(context).textTheme.bodyMedium,
        children: <TextSpan>[
          const TextSpan(text: '  *By continuing, you agree to our '),

          TextSpan(
            text: 'Terms of Service ',
            style: const TextStyle(color: AppColor.link),
            recognizer: _termsRecognizer,
          ),
          const TextSpan(text: 'and '),
          TextSpan(
            text: ' Privacy Policy',
            style: const TextStyle(color: AppColor.link),
            recognizer: _privacyRecognizer,
          ),
        ],
      ),
    );
  }
}
