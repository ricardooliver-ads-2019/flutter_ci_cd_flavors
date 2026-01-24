

import 'package:flutter/cupertino.dart';
import 'package:flutter_ci_cd_flavors/app/core/config/app_flavor.dart';
import 'package:flutter_ci_cd_flavors/app/core/config/app_runtime.dart';
import 'package:flutter_ci_cd_flavors/app/my_app.dart';

Future<void> initializeApp(AppFlavor flavor) async {
  AppRuntime.flavor = flavor;
  runApp(const MyApp());
}