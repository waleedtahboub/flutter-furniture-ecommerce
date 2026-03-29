import 'package:flutter/material.dart';
import 'package:furniture_store_app/common/resources/app_color.dart';
import 'package:furniture_store_app/common/resources/assets.dart';
import 'package:furniture_store_app/common/resources/constants.dart';
import 'package:furniture_store_app/common/widgets/coustom_terms_and_privacy_rich_text.dart';
import 'package:furniture_store_app/common/widgets/custom_social_button.dart';
import 'package:furniture_store_app/src/features/auth/create_account/page/create_account_page.dart';
import 'package:furniture_store_app/src/features/auth/login/widgets/forgot_password_sheet.dart';
import 'package:furniture_store_app/src/features/auth/models/auth_status.dart';
import 'package:furniture_store_app/src/features/home/page/home_page.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  static const String routePath = '/Login';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  AuthStatus _status = const AuthStatus.initial();
  bool showPassword = false;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login', style: Theme.of(context).textTheme.titleLarge),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: _status.when(
        initial: () => SingleChildScrollView(
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
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return const ForgotPasswordSheet();
                        },
                      );
                    },
                    child: const Text('Forget password?'),
                  ),
                ),
                const SizedBox(height: 10),
                const CustomTermsAndPrivacyRichText(),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _status = const AuthStatus.loading();
                    });

                    if (_formKey.currentState!.validate()) {
                      // all fields valid — proceed
                      context.go(HomePage.routePath);
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
                    icon: Image.asset(AppImages.googleIcon),
                  ),
                ),
                const SizedBox(height: 22),

                SizedBox(
                  width: double.infinity,
                  child: CustomSocialButton(
                    label: 'Sign In with Facebook ',
                    onPressed: () {},
                    icon: Image.asset(AppImages.facebookIcon),
                  ),
                ),
                const SizedBox(height: 22),

                InkWell(
                  onTap: () => context.go(CreateAccount.routePath),
                  child: Center(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: Theme.of(context).textTheme.bodyLarge,
                        children: const <TextSpan>[
                          TextSpan(text: '  Don\'t have an account '),

                          TextSpan(
                            text: 'Sign Up ',
                            style: TextStyle(color: AppColor.primary),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        authenticated: (username) => Center(child: Text('Welcome $username!')),
        error: (message) => Center(
          child: Text(
            'ERROR $message',
            style: const TextStyle(color: AppColor.error),
          ),
        ),
      ),
    );
  }
}
