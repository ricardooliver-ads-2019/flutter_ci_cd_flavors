enum AppFlavor {
  hml,
  prod;

  bool get isHml => this == AppFlavor.hml;
  bool get isProd => this == AppFlavor.prod;

  static AppFlavor fromString(String flavor) {
    return switch (flavor.trim().toLowerCase()) {
      'hml' => AppFlavor.hml,
      'prod' => AppFlavor.prod,
      _ => AppFlavor.hml,
    };
  }
}
