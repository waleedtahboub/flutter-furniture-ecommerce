import 'package:furniture_store_app/common/models/product_model/product_model.dart';
import 'package:furniture_store_app/src/features/auth/create_account/page/create_account_page.dart';
import 'package:furniture_store_app/src/features/auth/login/page/login_page.dart';
import 'package:furniture_store_app/src/features/cart/page/cart_page.dart';
import 'package:furniture_store_app/src/features/category/page/category_page.dart';
import 'package:furniture_store_app/src/features/home/page/home_page.dart';
import 'package:furniture_store_app/src/features/main/main_shell_scaffold.dart';
import 'package:furniture_store_app/src/features/product_details_page/product_details_page.dart';
import 'package:furniture_store_app/src/features/profile/page/profile_page.dart';
import 'package:go_router/go_router.dart';

final myRouter = GoRouter(
  initialLocation: HomePage.routePath,
  routes: [
    GoRoute(
      path: LoginPage.routePath,
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: ProductDetailsPage.routePath,
      builder: (context, state) {
        final product = state.extra as ProductModel;
        return ProductDetailsPage(product: product);
      },
    ),
    GoRoute(
      path: CreateAccount.routePath,
      builder: (context, state) => const CreateAccount(),
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return MainShellScaffold(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: HomePage.routePath,
              builder: (context, state) => const HomePage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: CategoryPage.routePath,
              builder: (context, state) => const CategoryPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: CartPage.routePath,
              builder: (context, state) => const CartPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: ProfilePage.routePath,
              builder: (context, state) => const ProfilePage(),
            ),
          ],
        ),
      ],
    ),
  ],
);
