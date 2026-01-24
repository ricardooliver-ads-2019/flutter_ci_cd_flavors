import 'package:flutter/material.dart';
import 'package:flutter_ci_cd_flavors/app/core/config/app_config.dart';
import 'package:flutter_ci_cd_flavors/app/core/config/app_runtime.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: AppRuntime.flavor.isHml,
      home: Scaffold(
        appBar: AppBar(title: Text(AppConfig.appName)),
        body: Padding(
          padding: EdgeInsetsGeometry.all(16),
          child: Text(
            'Flavor: ${AppRuntime.flavor.name.toUpperCase()}\n'
            'Debug menu: ${AppConfig.debugMenu}\n'
            'ENV: ${AppConfig.environment}\n'
            'API: ${AppConfig.apiBaseUrl}',
          ),
        ),
      ),
    );
  }
}
