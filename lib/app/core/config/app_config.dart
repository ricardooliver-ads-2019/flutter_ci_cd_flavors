class AppConfig {
  static const environment = String.fromEnvironment('ENVIRONMENT');
  static const appName = String.fromEnvironment('APP_NAME');
  static const apiBaseUrl = String.fromEnvironment('API_BASE_URL');
  static const debugMenu = bool.fromEnvironment('DEBUG_MENU');
}