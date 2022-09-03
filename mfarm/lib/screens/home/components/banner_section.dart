// ignore_for_file: prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class BannerSection extends StatelessWidget {
  const BannerSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: AboutSection(),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              Image.asset("assets/images/banner.png"),
            ],
          ),
        )
      ],
    );
  }
}

class MobBanner extends StatefulWidget {
  const MobBanner({Key? key}) : super(key: key);

  @override
  _MobBannerState createState() => _MobBannerState();
}

class _MobBannerState extends State<MobBanner> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Image.asset(
              "assets/images/banner.png",
              height: 250,
              width: 250,
            ),
          ],
        ),
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
        AutoSizeText(
          "Welcome",
          maxLines: 1,
          style: TextStyle(fontSize: 56, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        // ignore: prefer_const_constructors
        AutoSizeText(
          "Mayor Farm Foods",
          maxLines: 1,
          style: TextStyle(
            fontSize: 56,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "A proudly Nigeria Agri-business connecting smallholder farmers to microlenders and produce buyers globally. Buy organic farm products and invest safely in agriculture.",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Expanded(
              child: MaterialButton(
                height: 55,
                color: kSecondaryColor,
                onPressed: () {},
                child: Text(
                  "FarmVest",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "or",
                style: TextStyle(
                    color: kSecondaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Expanded(
              child: Container(
                height: 50,
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    "FarmStore",
                    style: TextStyle(
                        color: kSecondaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  style: OutlinedButton.styleFrom(
                      side: BorderSide(color: kSecondaryColor)),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
