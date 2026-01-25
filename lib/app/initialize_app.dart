import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ci_cd_flavors/app/core/config/app_flavor.dart';
import 'package:flutter_ci_cd_flavors/app/core/config/app_runtime.dart';
import 'package:flutter_ci_cd_flavors/app/my_app.dart';
import 'package:flutter_ci_cd_flavors/firebase/firebase_options_hml.dart' as firebase_hml;
import 'package:flutter_ci_cd_flavors/firebase/firebase_options_prod.dart' as firebase_prod;

Future<void> initializeApp(AppFlavor flavor) async {
  AppRuntime.flavor = flavor;

  final firebaseOptions = switch (flavor) {
    AppFlavor.hml => firebase_hml.DefaultFirebaseOptions.currentPlatform,
    AppFlavor.prod => firebase_prod.DefaultFirebaseOptions.currentPlatform,
  };

  await Firebase.initializeApp(options: firebaseOptions);
  runApp(const MyApp());
}
