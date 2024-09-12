enum Flavor { dev, prod }

class FlavorValues {
  FlavorValues({
    required this.baseUrl,
    required this.uploadUrl,
    this.version,
    this.name,
  });
  final String baseUrl;
  final String uploadUrl;
  final String? version;
  final String? name;

//Add other flavor specific values, e.g database name
}

class FlavorConfig {
  final Flavor flavor;
  final FlavorValues values;
  static FlavorConfig? _instance;

  factory FlavorConfig({required Flavor flavor, required FlavorValues values}) {
    _instance ??= FlavorConfig._internal(flavor, values);
    return _instance!;
  }

  FlavorConfig._internal(this.flavor, this.values);
  static FlavorConfig get instance {
    return _instance!;
  }

  static bool isPro() => _instance!.flavor == Flavor.prod;
  static bool isDev() => _instance!.flavor == Flavor.dev;
}
