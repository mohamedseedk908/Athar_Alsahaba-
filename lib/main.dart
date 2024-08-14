import 'package:athar_alsahaba/core/database/cache/cache_helper.dart';
import 'package:athar_alsahaba/core/services/services_locator.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'althar_alsahaba.dart';
import 'core/functions/check_state_changes.dart';
import 'firebase_options.dart';


void main()async {
  setupServiceLOcator();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  checkStateChanges();
  await getIt<CacheHelper>().init();
  runApp(const AltharAlsahaba());
}

