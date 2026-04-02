// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signout_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SignoutNotifier)
final signoutProvider = SignoutNotifierProvider._();

final class SignoutNotifierProvider
    extends $AsyncNotifierProvider<SignoutNotifier, void> {
  SignoutNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'signoutProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$signoutNotifierHash();

  @$internal
  @override
  SignoutNotifier create() => SignoutNotifier();
}

String _$signoutNotifierHash() => r'34b1d1394382cd675af19d99bd08b2ba77effd39';

abstract class _$SignoutNotifier extends $AsyncNotifier<void> {
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
