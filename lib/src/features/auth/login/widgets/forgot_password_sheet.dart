import 'package:flutter/material.dart';
import 'package:furniture_store_app/common/resources/constants.dart';
import 'package:furniture_store_app/src/features/auth/login/widgets/create_password_sheet.dart';

class ForgotPasswordSheet extends StatefulWidget {
  const ForgotPasswordSheet({super.key});

  @override
  State<ForgotPasswordSheet> createState() => _ForgotPasswordSheetState();
}

class _ForgotPasswordSheetState extends State<ForgotPasswordSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 20),
          Text(
            'Forgot Password',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Text(
            'Enter your email or phone number',
            style: Theme.of(context).textTheme.labelMedium,
          ),

          const SizedBox(height: 20),

          RichText(
            textAlign: TextAlign.start,
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: 'Email or phone number',
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),

          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Email is required';
              }
              if (!RegExp(Constants.emailRegEx).hasMatch(value)) {
                return 'Enter a valid email';
              }
              return null;
            },
            decoration: InputDecoration(
              hintText: 'Enter your email',
              prefixIcon: const Icon(Icons.email_outlined),
              prefixIconColor: Theme.of(context).colorScheme.primary,
            ),
          ),
          const SizedBox(height: 50),
          Center(
            child: ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  isScrollControlled: true,

                  context: context,
                  builder: (context) {
                    return const CreatePasswordSheet();
                  },
                );
              },
              child: Text(
                'Send code',
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ),
          ),

          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
