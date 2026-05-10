import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture_store_app/common/app/app_material.dart';
import 'package:furniture_store_app/common/services/database/hive_service.dart';
import 'package:furniture_store_app/firebase_options.dart';
import 'package:furniture_store_app/hive_registrar.g.dart';
import 'package:hive_ce/hive.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await HiveService.init();
  Hive.registerAdapters();

  runApp(const ProviderScope(child: AppMaterial()));
}
