import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:furniture_store_app/src/features/auth/repo/auth_repo.dart';

part 'signout_notifier.g.dart';

@riverpod
class SignoutNotifier extends _$SignoutNotifier {
  @override
  FutureOr<void> build() {
    // nothing to initialize
  }

  Future<bool> signOut() async {
    state = const AsyncLoading();
    try {
      await ref.read(authRepoProvider).signOut();
      return true;
    } catch (e) {
      return false;
    }
  }
}
