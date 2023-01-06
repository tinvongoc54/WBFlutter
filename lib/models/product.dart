class Product {
  final String id, name, description;
  final int price;
  final bool isFavourite;
  final List<String> images;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.isFavourite,
    required this.images
  });

  Product copyWith({
    String? id,
    String? name,
    String? description,
    int? price,
    bool? isFavourite,
    List<String>? images
  }) {
    return Product(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      price: price ?? this.price,
      isFavourite: isFavourite ?? this.isFavourite,
      images: images ?? this.images
    );
  }

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
        id: json['id'] as String,
        name: json['name'] as String,
        description: json['description'] as String,
        price: json['price'] as int,
        isFavourite: json['isFavourite'] as bool,
        images: json['images'].cast<String>() as List<String>,
    );
  }
}
