class Product{
  final String id , name, photo, description, price;
  int weight;

  Product({
    required this.id,
    required this.name,
    required this.photo,
    required this.price,
    required this.weight,
    required this.description,
});
  factory Product.fromJson(Map<String, dynamic>json){
    return Product(
        id: json['id'],
        name: json['name'],
        photo: json['photo'],
        price: json['price'],
        weight: json['weight'],
        description: json['description']
    );
  }
}