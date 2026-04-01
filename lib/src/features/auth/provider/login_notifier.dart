import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:furniture_store_app/src/features/auth/repo/auth_repo.dart';

part 'login_notifier.g.dart';

@riverpod
class LoginNotifier extends _$LoginNotifier {
  @override
  FutureOr<void> build() {
    return null;
  }

  Future<void> signIn(String email, String password) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final repo = ref.read(authRepoProvider);
      await repo.signIn(email, password);
    });
  }
}
