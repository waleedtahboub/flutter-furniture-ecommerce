import 'package:hive_ce_flutter/hive_ce_flutter.dart';

class HiveService<T> {
  HiveService(this._boxName);
  final String _boxName;

  static Future<void> init() async {
    await Hive.initFlutter();
  }

  Future<Box<T>> openBox() async {
    if (Hive.isBoxOpen(_boxName)) {
      return Hive.box(_boxName);
    }

    return await Hive.openBox<T>(_boxName);
  }

  Future<void> save(String key, T value) async {
    final box = await openBox();
    await box.put(key, value);
  }

  Future<T?> get(String key) async {
    try {
      final box = await openBox();
      return box.get(key);
    } catch (e) {
      return null;
    }
  }

  Future<void> clear() async {
    final box = await openBox();
    await box.clear();
  }
}
