// ignore_for_file: prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class FarmstoreSection extends StatelessWidget {
  const FarmstoreSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: AboutSection(),
        ),
        SizedBox(
          width: 20,
        ),
      ],
    );
  }
}

class BMobBanner extends StatefulWidget {
  const BMobBanner({Key? key}) : super(key: key);

  @override
  _BMobBannerState createState() => _BMobBannerState();
}

class _BMobBannerState extends State<BMobBanner> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        AboutSection(),
      ],
    );
  }
}

class AboutSection extends StatelessWidget {
  const AboutSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        // ignore: prefer_const_constructors
        //it will adjust its size according to screeen
        SizedBox(
          height: 30,
        ),
        // ignore: prefer_const_constructors
        AutoSizeText(
          "FarmStore",
          maxLines: 1,
          style: TextStyle(
            fontSize: 56,
            color: kSecondaryColor
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Mayor Farm products are organically produced and carefully packaged with the customer in mind. We assure consumers of the highest production standards in line with international best practices and deliver farm products to your doorstep.",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
