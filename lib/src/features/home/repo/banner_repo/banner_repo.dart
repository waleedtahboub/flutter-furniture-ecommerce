import 'package:furniture_store_app/common/models/banner_model/banner_model.dart';
export 'banner_repo_implementation.dart' show BannerRepoProvider;


abstract class BannerRepo {
  Future<List<BannerModel>> fetchAllBanners();

  Future<void> addBanner();

}
