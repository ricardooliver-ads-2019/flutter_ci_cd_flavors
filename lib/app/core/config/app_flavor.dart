enum AppFlavor {
  hlm,
  prod;

  bool get isHml => this == AppFlavor.hlm;
  bool get isProd => this == AppFlavor.prod;

  static AppFlavor fromString(String flavor) {
    return switch (flavor.trim().toLowerCase()) {
      'hlm' => AppFlavor.hlm,
      'prod' => AppFlavor.prod,
      _ => AppFlavor.hlm,
    };
  }
}
