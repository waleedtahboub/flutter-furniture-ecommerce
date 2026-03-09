import 'package:flutter/material.dart';
import 'package:furniture_store_app/common/resources/constants.dart';
import 'package:furniture_store_app/common/widgets/custom_password_field.dart';

class CreatePasswordSheet extends StatefulWidget {
  const CreatePasswordSheet({super.key});

  @override
  State<CreatePasswordSheet> createState() => _CreatePasswordSheetState();
}

class _CreatePasswordSheetState extends State<CreatePasswordSheet> {
  final _textEditingController = TextEditingController();

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 30),

          Text(
            'Create new Password',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Text(
            'Enter your new Password',
            style: Theme.of(context).textTheme.labelMedium,
          ),

          const SizedBox(height: 40),
          CustomPasswordField(
            controller: _textEditingController,
            label: 'Password',
            hintText: 'Enter your password',
            prefixIconColor: Theme.of(context).colorScheme.primary,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Password is required';
              }
              if (!RegExp(Constants.passwordRegEx).hasMatch(value)) {
                return 'Password must have uppercase, \nlowercase, number and special character  ';
              }
              return null;
            },
          ),
          const SizedBox(height: 35),
          CustomPasswordField(
            label: 'Password',
            hintText: 'Confirm Password',
            prefixIconColor: Theme.of(context).colorScheme.primary,
            validator: (value) {
              if (value != _textEditingController.text) {
                return 'Passwords do not match';
              }
              return null;
            },
          ),
          const SizedBox(height: 50),
          Center(
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Change Password',
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
