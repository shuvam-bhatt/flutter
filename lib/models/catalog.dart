class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({this.id, this.name, this.desc, this.price, this.color, this.image});
}

class CatalogModel{
  final products = [
  Item(
    id: "CP001",
    name: "iPhone 12 Pro",
    desc: "Apple iPhone 12th generation",
    price: 999,
    color: "#33505a",
    image:
        "https://images-cdn.ubuy.co.in/66aed136ae344f3ef4763f81-open-box-apple-iphone-12-pro-carrier.jpg",
    ),
  ];

  static var items;
}

