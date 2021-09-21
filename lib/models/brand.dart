class Brand {
  late String brandName, brandIcon;

  Brand({required this.brandName, required this.brandIcon});

  Brand.fromJson(Map<String, dynamic> json) {
    brandName = json['brandName'];
    brandIcon = json['brandIcon'];
  }

  Map<String, dynamic> brandsToMap() {
    return {
      'brandName': brandName,
      'brandIcon': brandIcon,
    };
  }
}
