import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:furniture_store_app/src/features/home/models/home_state.dart';
import 'package:furniture_store_app/src/features/home/repo/banner_repo/banner_repo_implementation.dart';

part 'home_provider.g.dart';

@Riverpod(keepAlive: true)
class HomeNotifier extends _$HomeNotifier {
  @override
  FutureOr<HomeState> build() async {
   return  fetchHomeData() ;
  }


  Future<void> addBanner() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await ref.read(bannerRepoProvider).addBanner();
      return fetchHomeData();
    });
  }

  Future<HomeState> fetchHomeData() async {
   final banners = await ref.read(bannerRepoProvider).fetchAllBanners();

    return HomeState(
      banners: banners,
      isLoading: false,
    );

  }



}