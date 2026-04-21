import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// This extension adds useful helpers to [BuildContext].
/// Instead of typing `Theme.of(context).colorScheme.primary`,
/// you can just type `context.colorScheme.primary`.
extension BuildContextX on BuildContext {
  // --- Theme Helpers ---
  // These make accessing your app's look and feel much shorter!
  
  ThemeData get theme => Theme.of(this);
  ColorScheme get colorScheme => theme.colorScheme;
  TextTheme get textTheme => theme.textTheme;

  // --- Screen Size & Responsive Helpers ---
  // Useful for making your app look good on mobile, tablet, and web.

  Size get screenSize => MediaQuery.sizeOf(this);
  double get screenWidth => screenSize.width;
  double get screenHeight => screenSize.height;

  bool get isMobile => screenWidth < 600;
  bool get isTablet => screenWidth >= 600 && screenWidth <= 1200;
  bool get isWeb => screenWidth > 1200;

  // --- Routing Helpers ---
  
  String get currentRoutePath => GoRouterState.of(this).uri.path;

  /// A helper to navigate to a nested route from anywhere.
  /// It automatically handles the "base path" logic for you!
  void goNested(String relativePath) {
    final basePath = currentRoutePath == '/' ? '' : currentRoutePath;
    go('$basePath/$relativePath');
  }

  /// A helper to navigate to product details from anywhere.
  void navigateToProductDetails(String productId, String productRoutePath) {
    goNested('$productRoutePath/$productId');
  }

  // --- Navigation Aliases ---
  // If you prefer using context.pushName(...) instead of GoRouter.of(context).pushNamed(...)
  
  Future<T?> pushNamed<T extends Object?>(
    String name, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, dynamic> queryParameters = const <String, dynamic>{},
    Object? extra,
  }) =>
      GoRouter.of(this).pushNamed<T>(
        name,
        pathParameters: pathParameters,
        queryParameters: queryParameters,
        extra: extra,
      );
}
