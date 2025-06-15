class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({this.id, this.name, this.desc, this.price, this.color, this.image});

  //map to class
  factory Item.fromMap(Map<String,dynamic> map){  
    return Item(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      color: map["color"],
      image: map["image"],
    );
  }
  //class to map
  toMap()=>{
    "id": id,
    "name": name,
    "desc": desc,
    "price": price,
    "color": color,
    "image": image,

  }

}

class CatalogModel{
  static List<Item> items = [
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
}

