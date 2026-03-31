import 'package:furniture_store_app/src/features/auth/repo/auth_repo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

class SignUpNotifier extends AutoDisposeAsyncNotifier<void> {
  @override
  FutureOr<void> build() {
    return null;
  }

  @riverpod
  FutureOr<void> signUP(String email, String password, String username) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final repo = ref.read(authRepoProvider);
      await repo.signUp(email, password, username);
    });
  }
}

final signUpProvider = AsyncNotifierProvider.autoDispose<SignUpNotifier, void>(
  () {
    return SignUpNotifier();
  },
);
