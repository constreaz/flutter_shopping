import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final double price, rating;
  final int size, id, discount;
  final Color color;
  Product({
    this.id,
    this.title,
    this.price,
    this.size,
    this.discount,
    this.rating,
    this.description,
    this.image,
    this.color
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Nike Air Max 20",
      price: 240.00,
      size: 6,
      discount: 30,
      rating: 4.5,
      description: dummyText,
      image: "assets/images/sneaker_01.png",
      color: Color(0xFFADD8E6)),
  Product(
      id: 2,
      title: "Excee Sneakers",
      price: 260.00,
      size: 8,
      discount: 0,
      rating: 3.0,
      description: dummyText,
      image: "assets/images/sneaker_02.png",
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Air Max Motion 2",
      price: 290.00,
      size: 10,
      discount: 0,
      rating: 3.5,
      description: dummyText,
      image: "assets/images/sneaker_03.png",
      color: Color(0xFF989493)),
  Product(
      id: 4,
      title: "Leather Sneakers",
      price: 270.00,
      size: 11,
      discount: 40,
      rating: 1.0,
      description: dummyText,
      image: "assets/images/sneaker_04.png",
      color: Color(0xFFE6B398)),
];

String dummyText =
    "Built for natural motion, the Nike Flex Shoes";
