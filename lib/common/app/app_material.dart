import 'package:flutter/material.dart';
import 'package:furniture_store_app/common/app/theme/app_theme.dart';
import 'package:furniture_store_app/src/features/auth/create%20account/create_account.dart';
// import 'package:furniture_store_app/src/features/auth/login/login_page.dart';

class AppMaterial extends StatelessWidget {
  const AppMaterial({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: AppTheme.theme, home: const CreateAccount());
  }
}
