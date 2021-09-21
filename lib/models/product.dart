class Product {
  late String title, description, price, image;

  Product(
      {required this.title,
      required this.description,
      required this.price,
      required this.image});

  Product.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    price = json['price'];
    image = json['image'];
  }

  Map<String, dynamic> productsToMap() {
    return {
      'title': title,
      'description': description,
      'price': price,
      'image': image,
    };
  }
}
