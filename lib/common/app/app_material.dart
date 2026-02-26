import 'package:flutter/material.dart';
import 'package:furniture_store_app/common/app/theme/app_theme.dart';
import 'package:furniture_store_app/src/features/home/page/home_page.dart';

class AppMaterial extends StatelessWidget {
  const AppMaterial({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: AppTheme.light, home: const HomePage());
  }
}
