import 'package:flutter/material.dart';
import 'package:furniture_store_app/common/app/router/app_router.dart';
import 'package:furniture_store_app/common/app/theme/app_theme.dart';

class AppMaterial extends StatelessWidget {
  const AppMaterial({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme.theme,
      routerConfig: myRouter,
      debugShowCheckedModeBanner: false,
    );
  }
}
