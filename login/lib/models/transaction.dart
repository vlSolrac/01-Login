import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Transaction {
  final String title, category;
  final IconData icon;
  final Color color;
  final double value;

  Transaction({
    required this.title,
    required this.category,
    required this.icon,
    required this.color,
    required this.value,
  });

  List<Transaction> transactions = [
    Transaction(
      title: "Trasfer Info",
      category: "Envys",
      icon: Icons.send,
      color: Colors.pink,
      value: 2000,
    ),
    Transaction(
      title: "Nike",
      category: "Shoes",
      icon: Icons.shopping_basket,
      color: Colors.amber,
      value: -1500,
    ),
  ];
}
