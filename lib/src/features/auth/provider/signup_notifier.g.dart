// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SignupNotifier)
final signupProvider = SignupNotifierProvider._();

final class SignupNotifierProvider
    extends $AsyncNotifierProvider<SignupNotifier, void> {
  SignupNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'signupProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$signupNotifierHash();

  @$internal
  @override
  SignupNotifier create() => SignupNotifier();
}

String _$signupNotifierHash() => r'c17a8d59768723571c156da009205468ccd905a6';

abstract class _$SignupNotifier extends $AsyncNotifier<void> {
  FutureOr<void> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<void>, void>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<void>, void>,
              AsyncValue<void>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
