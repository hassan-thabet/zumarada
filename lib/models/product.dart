class Product {
  late String title, description, price, image, uid, categoryId;

  Product({
    required this.title,
    required this.description,
    required this.price,
    required this.image,
    //required this.uid,
    required this.categoryId,
  });

  Product.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    price = json['price'];
    image = json['image'];
    //uid = json['uId'];
    categoryId = json['category_id'];
  }

  Map<String, dynamic> productsToMap() {
    return {
      'title': title,
      'description': description,
      'price': price,
      'image': image,
      //'uid': uid,
      'category_id': categoryId,
    };
  }
}
