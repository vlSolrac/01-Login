import 'package:flutter/material.dart';

enum CardBrand { visa, mastercard }

class CreditCard {
  final int id;
  final String cardHolder, securityCode, number;
  final CardBrand brand;
  final double amount;
  final List<Color> colors;

  CreditCard({
    required this.id,
    required this.cardHolder,
    required this.securityCode,
    required this.number,
    required this.brand,
    required this.amount,
    required this.colors,
  });
}

List<CreditCard> cards = [
  CreditCard(
    id: 1,
    cardHolder: "Carlos Vela",
    securityCode: '123',
    number: '4111 1111 1111 1111',
    brand: CardBrand.visa,
    amount: 2097.10,
    colors: [
      Color(0xff0000ff),
      Color(0xff377cff),
    ],
  ),
  CreditCard(
    id: 1,
    cardHolder: "Carlos Vela",
    securityCode: '456',
    number: '4222 2221 2221 2221',
    brand: CardBrand.mastercard,
    amount: 2097.10,
    colors: [
      Colors.orange,
      Colors.orangeAccent,
    ],
  )
];
