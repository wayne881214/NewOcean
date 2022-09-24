import 'package:flutter/cupertino.dart';

class CartModel {
  String img;
  String name;
  double price;
  int items;
  Color color;
  int size;
  late final Map<String, Object> api;

  CartModel({
    required this.name,
    required this.price,
    required this.items,
    required this.img,
    required this.color,
    required this.size,
  });

  factory CartModel.fromJson(Map<String, dynamic> json) {
    String valueString = json['color'].split('(0x')[1].split(')')[0];
    int value = int.parse(valueString, radix: 16);
    Color otherColor = new Color(value);
    return CartModel(
      name: json['name'],
      price:json['price'].toDouble(),
      items:json['items'],
      img:json['img'],
      color:otherColor,
      size: json['size'],
    );
  }
}

void createApi(CartModel cartModel) {
  cartModel.api = {
    "img": cartModel.img,
    "name": cartModel.name,
    "price": cartModel.price,
    "items": cartModel.items,
    "color": cartModel.color.toString(),
    "size": cartModel.size,
  };
}
