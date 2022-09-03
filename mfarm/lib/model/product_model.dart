import 'package:flutter/material.dart';

class Product {
  final String image, title, desc;
  final int id, price;

  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.desc,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "DQV Beans Flour (425g) 12 pcs",
    image: "assets/images/beans.jpg",
    price: 2050,
    desc: "DQV Beans Flour is produced to eliminate all the preliminary preparation stress for making Moimoi, Akara and Danwake, thus saving time, energy and cost. It has a long Shelf life so feel free to stock it .",
  ),
  Product(
    id: 2,
    title: "Mayor Garri (1kg) 1pc",
    image: "assets/images/garri.jpg",
    price: 400,
    desc: "Quality white garri, free from dirt, very crispy and crunchy, made from 100% Cassava. The product is directly from Mayor Farms and is well branded to make it very healthy for consumption",
  ),
  Product(
    id: 3,
    title: "Mayor Boneless Pork (1kg) 1pc",
    image: "assets/images/pork.jpg",
    price: 2300,
    desc: "Mayor Fresh Pork is an excellent source of many vitamins and minerals, including thiamine, zinc, vitamin B12, vitamin B6, niacin, phosphorus, and iron. Mayor Boneless pork is nutrient-dense, satisfying, and good for you with little to no bones.",
  ),
  Product(
    id: 4,
    title: "DQV Beans Flour (825g) 6 pcs",
    image: "assets/images/beans.jpg",
    price: 3500,
    desc: "DQV Beans Flour is produced to eliminate all the preliminary preparation stress for making Moimoi, Akara and Danwake, thus saving time, energy and cost. It has a long Shelf life so feel free to stock it .",
  ),
  Product(
    id: 5,
    title: "Mayor Ofada Rice (1kg) 1pc",
    image: "assets/images/ofada.jpg",
    price: 1500,
    desc: "Mayor Ofada is a local variety of brown rice in Nigeria which is unpolished and not genetically modified. The high amount of dietary fibres in Ofada lowers cholesterol levels which are responsible for excessive weight gain. Ofada rice is also great for bone health due to minerals such as magnesium, phosphorus, zinc and folate",
  ),
  Product(
    id: 6,
    title: "Aout Honey (500 ml) 1pc",
    image: "assets/images/honey.jpg",
    price: 3500,
    desc: "Aout Honey is 100% Raw Natural Honey. Our honey is unadulterated with no added sugar, syrup or preservatives.",
  ),
  Product(
    id: 7,
    title: "Mayor Garri (2kg) 1pc",
    image: "assets/images/garri.jpg",
    price: 750,
    desc: "Quality white garri, free from dirt, very crispy and crunchy, made from 100% Cassava. The product is directly from Mayor Farms and is well branded to make it very healthy for consumption",
  ),
];
