// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_repo_implementation.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(bannerRepo)
final bannerRepoProvider = BannerRepoProvider._();

final class BannerRepoProvider
    extends $FunctionalProvider<BannerRepo, BannerRepo, BannerRepo>
    with $Provider<BannerRepo> {
  BannerRepoProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'bannerRepoProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$bannerRepoHash();

  @$internal
  @override
  $ProviderElement<BannerRepo> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  BannerRepo create(Ref ref) {
    return bannerRepo(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BannerRepo value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BannerRepo>(value),
    );
  }
}

String _$bannerRepoHash() => r'8d61c6de5cb548a2d71db6a2d65cb9cb294596cc';
