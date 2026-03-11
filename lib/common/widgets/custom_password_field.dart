import 'package:flutter/material.dart';

class CustomPasswordField extends StatefulWidget {
  const CustomPasswordField({
    super.key,
    required this.label,
    required this.hintText,
    this.controller,
    this.validator,
    this.prefixIconColor,
  });

  final String label;
  final String hintText;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final Color? prefixIconColor;

  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  bool obscured = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.label, style: Theme.of(context).textTheme.labelLarge),
        const SizedBox(height: 10),
        TextFormField(
          obscureText: obscured,
          validator: widget.validator,
          controller: widget.controller,
          decoration: InputDecoration(
            hintText: widget.hintText,
            prefixIcon: const Icon(Icons.lock_outlined),
            prefixIconColor: Theme.of(context).colorScheme.primary,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  obscured = !obscured;
                });
              },
              icon: obscured
                  ? const Icon(Icons.remove_red_eye_outlined)
                  : const Icon(Icons.remove_red_eye),
            ),
          ),
        ),
      ],
    );
  }
}
