// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class FarmvestSection extends StatelessWidget {
  const FarmvestSection({
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
          width: 15,
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
          height: 15,
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
          "FarmVest",
          textAlign: TextAlign.center,
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
          "Mayor FarmVest is an agro Investment platform that leverages on the power of crowd funding to generate capital for farm ventures, thereby eliminating food insecurity, increasing the volume of food production and earning solid returns on all investments made. Through the FarmVest platform, we provide the necessary infrastructure to consistently bring high quality produce and consistently remit high dividends to our investors thereby alleviating poverty and distributing wealth.",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
