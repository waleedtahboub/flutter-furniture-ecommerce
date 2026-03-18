import 'package:flutter/material.dart';
import 'package:furniture_store_app/common/resources/app_color.dart';
import 'package:furniture_store_app/common/resources/constants.dart';

class Fields extends StatelessWidget {
  const Fields({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          textAlign: TextAlign.start,
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: 'Email',
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ],
          ),
        ),

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
            enabledBorder: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(0),
              borderSide: const BorderSide(color: AppColor.skaGray, width: 2.5),
            ),
          ),
        ),

        const SizedBox(height: 30),
        RichText(
          textAlign: TextAlign.start,
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: 'Shipping Address',
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ],
          ),
        ),

        TextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Shipping Address is required';
            }

            return null;
          },
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.location_on_outlined),
            prefixIconColor: Theme.of(context).colorScheme.onSurface,
            hintText: 'Choose',
            hintStyle: const TextStyle(color: AppColor.outline),
            enabledBorder: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(0),
              borderSide: const BorderSide(color: AppColor.skaGray, width: 2.5),
            ),
          ),
        ),
      ],
    );
  }
}
