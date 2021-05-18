import 'dart:convert';

List<Item> itemFromJson(String str) => List<Item>.from(json.decode(str).map((x) => Item.fromJson(x)));

String itemToJson(List<Item> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Item {
  Item({
    this.description,
    this.id,
    this.name,
    this.image,
    this.tags,
    this.itemId,
  });

  final String description;
  final String id;
  final String name;
  final String image;
  final List<Tag> tags;
  final String itemId;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
    description: json["description"] == null ? null : json["description"],
    id: json["_id"] == null ? null : json["_id"],
    name: json["name"] == null ? null : json["name"],
    image: json["image"] == null ? null : json["image"]["url"],
    tags: json["tags"] == null ? null : List<Tag>.from(json["tags"].map((x) => Tag.fromJson(x))),
    itemId: json["id"] == null ? null : json["id"],
  );

  Map<String, dynamic> toJson() => {
    "description": description == null ? null : description,
    "_id": id == null ? null : id,
    "name": name == null ? null : name,
    "image": image == null ? null : image,
    "tags": tags == null ? null : List<dynamic>.from(tags.map((x) => x.toJson())),
    "id": itemId == null ? null : itemId,
  };
}

class Tag {
  Tag({
    this.name,
    this.price,
    this.item,
    this.id,
  });

  final String name;
  final double price;
  final String item;
  final String id;

  factory Tag.fromJson(Map<String, dynamic> json) => Tag(
    name: json["name"] == null ? null : json["name"],
    price: json["price"] == null ? null : json["price"].toDouble(),
    item: json["item"] == null ? null : json["item"],
    id: json["id"] == null ? null : json["id"],
  );

  Map<String, dynamic> toJson() => {
    "name": name == null ? null : name,
    "price": price == null ? null : price,
    "item": item == null ? null : item,
    "id": id == null ? null : id,
  };
}

