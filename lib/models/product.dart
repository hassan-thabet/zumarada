class Product {
  // ignore: non_constant_identifier_names
  late String title, description, price, image, uid, category_id;

  Product({
    required this.title,
    required this.description,
    required this.price,
    required this.image,
  });

  Product.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    price = json['price'];
    image = json['image'];
    uid = json['uid'];
    category_id = ['category_id'] as String;
  }

  Map<String, dynamic> productsToMap() {
    return {
      'title': title,
      'description': description,
      'price': price,
      'image': image,
      'uid': uid,
      'category_id': category_id,
    };
  }
}
