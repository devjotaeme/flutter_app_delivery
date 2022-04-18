import 'package:flutter/material.dart';

class OrderModel {
  OrderModel({
    this.path,
    this.title,
    this.detalle,
    this.precio,
    this.subText,
    this.color,
  });
  String? path;
  String? title;
  String? detalle;
  String? precio;
  String? subText;
  Color? color;
}

List<OrderModel> orders = [
  OrderModel(
    path: "assets/images/burger1.png",
    title: "Chicken\n Burger",
    detalle: "200 gr chicken\n lechuga, tomate",
    precio: "22.00",
    subText: "Burger 1",
    color: const Color.fromRGBO(22, 52, 92, 1.0),
  ),
  OrderModel(
    path: "assets/images/burger2.png",
    title: "Chese\n Burger",
    detalle: "200 gr meat\n chese",
    precio: "25.00",
    subText: "Burger 2",
    color: const Color.fromRGBO(24, 41, 52, 1.0),
  ),
  OrderModel(
    path: "assets/images/burger3.png",
    title: "King\n Burger",
    detalle: "200 gr meat\n lechuga",
    precio: "30.00",
    subText: "Burger 3",
    color: const Color.fromRGBO(22, 52, 92, 1.0),
  ),
];
