import 'package:flutter/widgets.dart';
import 'package:flutter_ci_cd_flavors/app/core/config/app_config.dart';
import 'package:flutter_ci_cd_flavors/app/core/config/app_flavor.dart';
import 'package:flutter_ci_cd_flavors/app/initialize_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final flavor = AppFlavor.fromString(AppConfig.environment);
  await initializeApp(flavor);
}
