class Product {
  final String SKU;
  final String category;
  final String name;
  final String description;
  final String supplier;
  final String restock;
  final String picture;
  final int  price;
  final int  quantity;

  const Product({
    required this.SKU,
    required this.name,
    required this.category,
    required this.description,
    required this.supplier,
    required this.picture,
    required this.price,
    required this.quantity,
    required this.restock,
  });

  Product copy({
    String? SKU,
    String? category,
    String? name,
    String? restock,
    String? supplier,
    String? description,
    int? price,
    int? quantity
  }) =>
      Product(
        SKU: SKU ?? this.SKU,
        category: category ?? this.category,
        name: name ?? this.name,
        restock: restock ?? this.restock,
        description: description ?? this.description,
        supplier: supplier ?? this.supplier,
        quantity: quantity ?? this.quantity,
        price: price ?? this.price,
        picture: picture ?? this.picture,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Product &&
          runtimeType == other.runtimeType &&
          SKU == other.SKU &&
          name == other.name &&
          category == other.category &&
          description == other.description &&
          quantity == other.quantity &&
          price == other.price &&
          supplier == other.supplier &&
          restock == other.restock &&
          picture == other.picture;


  @override
  int get hashCode => SKU.hashCode ^ name.hashCode ^ description.hashCode ^ quantity.hashCode^ price.hashCode^ supplier.hashCode^ restock.hashCode^ picture.hashCode^ category.hashCode;
}