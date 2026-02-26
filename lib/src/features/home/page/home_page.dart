import 'package:flutter/material.dart';
import 'package:furniture_store_app/src/features/auth/login/login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: LoginPage());
  }
}
