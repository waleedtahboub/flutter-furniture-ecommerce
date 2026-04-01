import 'package:furniture_store_app/src/features/auth/repo/auth_repo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'signup_notifier.g.dart';

@riverpod
class SignupNotifier extends _$SignupNotifier {
  @override
  FutureOr<void> build() {
    return null;
  }

  FutureOr<void> signUp(String email, String password, String username) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final repo = ref.read(authRepoProvider);
      await repo.signUp(email, password, username);
    });
  }
}

