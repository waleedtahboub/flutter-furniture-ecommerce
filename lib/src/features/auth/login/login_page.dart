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

                    TextSpan(
                      text: '*',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.error,
                      ),
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

                    TextSpan(
                      text: '*',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.error,
                      ),
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
              Padding(
                padding: const EdgeInsets.only(left: 185),
                child: TextButton(
                  onPressed: () {},
                  child: const Text('Forget password?'),
                ),
              ),

              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: '*By continuing, you agree to our',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const TextSpan(
                      text: 'Terms of Service ',
                      style: TextStyle(color: AppColor.link),
                    ),
                    TextSpan(
                      text: 'and ',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const TextSpan(
                      text: 'Privacy Policy',
                      style: TextStyle(color: AppColor.link),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 52),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // all fields valid — proceed
                  }
                },
                child: const Text('Create Account'),
              ),
              const SizedBox(height: 20),
              const Text('Or using other method'),

              const SizedBox(height: 22),

              CustomSocialButton(
                label: 'Sign In with Google ',
                onPressed: () {},
                icon: Image.asset('assets/icons/google.png'),
              ),
              const SizedBox(height: 22),

              CustomSocialButton(
                label: 'Sign In with Facebook ',
                onPressed: () {},
                icon: Image.asset('assets/icons/facebook_icon.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
