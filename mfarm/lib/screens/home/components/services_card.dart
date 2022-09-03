// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../constants.dart';

class ServicesCard extends StatelessWidget {
  const ServicesCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // now we make service section attractive and good
    return Wrap(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Services(
          image: "assets/images/vege.jpg",
          title: "Service",
          desc: "We make every decision and measure every outcome based on how well it serves our customers.",
        ),
        Services(
          image: "assets/images/porkbanner.JPG",
          title: "Integrity",
          desc: "We are honest, transparent and committed to doing what’s best for our customers and our company.",
        ),
        Services(
          image: "assets/images/box.png",
          title: "Innovation",
          desc: "We constantly push ourselves to be our best, focusing on solutions to our customer needs.",
        ),
      ],
    );
  }
}

class Services extends StatelessWidget {
  const Services({
    Key? key,
    required this.image,
    required this.title,
    required this.desc,
  }) : super(key: key);
  final String image, title, desc;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kPadding/2),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(8.0),
        child: Container(
          padding: EdgeInsets.all(kPadding / 2),
          width: 300,
          child: Column(
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      image,
                      height: 80,
                      width: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                desc,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
