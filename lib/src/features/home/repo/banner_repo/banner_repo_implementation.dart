import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:furniture_store_app/common/models/banner_model/banner_model.dart';
import 'package:furniture_store_app/src/features/home/repo/banner_repo/banner_repo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'banner_repo_implementation.g.dart';

class BannerRepoImplementation implements BannerRepo {
  BannerRepoImplementation();

  final _collection = FirebaseFirestore.instance.collection('banners');
  final List<String> _bannerImages = [];

  @override
  Future<void> addBanner() async {
    for (final imageUrl in _bannerImages) {
      final docRef = _collection.doc();
      final banner = BannerModel(id: docRef.id, imageUrl: imageUrl).toJson();
      await docRef.set(banner);
    }
  }

  @override
  Future<List<BannerModel>> fetchAllBanners() async {
    final snapshot = await _collection.get();

    return snapshot.docs
        .map((doc) => BannerModel.fromJson(doc.data()))
        .toList();
  }
}

@Riverpod(keepAlive: true)
BannerRepo bannerRepo(Ref ref) {
  return BannerRepoImplementation();
}
