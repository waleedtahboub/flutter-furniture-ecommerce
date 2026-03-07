import 'package:flutter/material.dart';
import 'package:furniture_store_app/src/features/auth/login/page/login_page.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static const String routePath = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          TextButton(
            onPressed: () => context.go(LoginPage.routePath),
            child: const Text('click me to go to login page'),
          ),
        ],
      ),
    );
  }
}
