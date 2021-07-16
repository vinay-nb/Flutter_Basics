class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "Pixel 5",
        description: "ultimate andorid experince",
        price: 36000,
        color: "#808080",
        image:
            "https://images-na.ssl-images-amazon.com/images/I/81-fNmQqlLL._SX522_.jpg")
  ];
}

class Item {
  final int id;
  final String name;
  final String description;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.color,
      required this.image});
}
