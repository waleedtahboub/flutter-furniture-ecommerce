import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:furniture_store_app/src/features/auth/repo/auth_repo.dart';

class LoginNotifier extends AutoDisposeAsyncNotifier<void> {
  @override
  FutureOr<void> build() {
    return null;
  }

  @riverpod
  Future<void> signIn(String email, String password) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final repo = ref.read(authRepoProvider);
      await repo.signIn(email, password);
    });
  }
}

final signInProvider = AsyncNotifierProvider.autoDispose<LoginNotifier, void>(
  () {
    return LoginNotifier();
  },
);
