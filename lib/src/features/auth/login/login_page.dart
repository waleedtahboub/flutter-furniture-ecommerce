import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:furniture_store_app/common/resources/app_color.dart';
import 'package:furniture_store_app/common/resources/constants.dart';
import 'package:furniture_store_app/common/widgets/custom_social_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool showPassword = false;
  final _formKey = GlobalKey<FormState>();
  late TapGestureRecognizer _termsRecognizer;
  late TapGestureRecognizer _privacyRecognizer;

  @override
  void dispose() {
    _termsRecognizer.dispose();
    _privacyRecognizer.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _termsRecognizer = TapGestureRecognizer()..onTap = () {};
    _privacyRecognizer = TapGestureRecognizer()..onTap = () {};
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('login', style: Theme.of(context).textTheme.titleLarge),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Form(
          key: _formKey,
          child: Column(
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
                decoration: const InputDecoration(
                  hintText: 'Enter your email',
                  prefixIcon: Icon(Icons.email_outlined),
                  prefixIconColor: AppColor.iconColor,
                ),
              ),
              const SizedBox(height: 24),
              RichText(
                textAlign: TextAlign.start,
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Password',
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ],
                ),
              ),

              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Password is required';
                  }
                  if (!RegExp(Constants.passwordRegEx).hasMatch(value)) {
                    return 'Password must have uppercase, \nlowercase, number and special character  ';
                  }
                  return null;
                },
                obscureText: showPassword,
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                  prefixIconColor: AppColor.iconColor,
                  suffixIconColor: AppColor.iconColor,
                  prefixIcon: const Icon(Icons.lock_outlined),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        showPassword = !showPassword;
                      });
                    },
                    icon: showPassword
                        ? const Icon(Icons.remove_red_eye_outlined)
                        : const Icon(Icons.remove_red_eye),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text('Forget password?'),
                ),
              ),
              const SizedBox(height: 10),
              RichText(
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
              ),

              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // all fields valid — proceed
                  }
                },
                child: const Text('Login'),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: Text(
                  'Or using other method',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ),

              const SizedBox(height: 22),

              SizedBox(
                width: double.infinity,
                child: CustomSocialButton(
                  label: 'Sign In with Google ',
                  onPressed: () {},
                  icon: Image.asset('assets/icons/google.png'),
                ),
              ),
              const SizedBox(height: 22),

              SizedBox(
                width: double.infinity,
                child: CustomSocialButton(
                  label: 'Sign In with Facebook ',
                  onPressed: () {},
                  icon: Image.asset('assets/icons/facebook_icon.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
