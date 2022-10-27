import 'package:flutter/material.dart';

class Product {
  final String image, title;
  final int price;
  final Color bgColor;

  Product({
    required this.image,
    required this.title,
    required this.price,
    this.bgColor = const Color(0xFFEFEFF2),
  });
}

List<Product> demo_product = [
  Product(
    image: "assets/images/americano.jpg",
    title: "Americano",
    price: 250000,
  ),
  Product(
    image: "assets/images/cappuccino.jpg",
    title: "Cappuccno",
    price: 200000,
  ),
  Product(
    image: "assets/images/espresso.jpg",
    title: "Espresso",
    price: 200000,
    bgColor: const Color(0xFFF8FEFB),
  ),
  Product(
    image: "assets/images/macchiato.jpg",
    title: "Maccgiato",
    price: 250000,
    bgColor: const Color(0xFFEEEEED),
  ),
];
