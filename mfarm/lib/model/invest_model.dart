import 'package:flutter/material.dart';

class Invest {
  final String image, title, desc, price;
  final int id;

  Invest({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.desc,
  });
}

List<Invest> products = [
  Invest(
    id: 1,
    title: "Pig Farm",
    image: "assets/images/beans.jpg",
    price: "1,000,000",
    desc: "12 Months with 35.00% ROI",
  ),
  Invest(
    id: 2,
    title: "Broiler Farm",
    image: "assets/images/garri.jpg",
    price: "500,000",
    desc: "6 Months with 15.00% ROI",
  ),
  Invest(
    id: 3,
    title: "WaterMelon Farm",
    image: "assets/images/pork.jpg",
    price: "200,000",
    desc: "4 Months with 8.00% ROI",
  ),
  Invest(
    id: 4,
    title: "Turkey Farm",
    image: "assets/images/beans.jpg",
    price: "750,000",
    desc: "​8 Months with 22.00% ROI",
  ),
  Invest(
    id: 5,
    title: "Maize Farm",
    image: "assets/images/ofada.jpg",
    price: "300,000",
    desc: "4 Months with 10.00% ROI",
  ),
  Invest(
    id: 6,
    title: "Okro Farm",
    image: "assets/images/honey.jpg",
    price: "350,000",
    desc: "​​4 Months with 11.00% ROI",
  ),
];
