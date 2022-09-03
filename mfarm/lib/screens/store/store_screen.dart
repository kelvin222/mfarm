// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mfarm/constants.dart';
import 'package:mfarm/model/product_model.dart';
import 'package:mfarm/screens/home/components/farmvest_section.dart';
import 'package:mfarm/screens/home/components/footer_container.dart';

import 'components/banner_section.dart';
import 'components/body.dart';
import 'components/footer.dart';
import 'components/header.dart';
import 'components/header_container.dart';
import 'components/menu.dart';
import 'components/product.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({Key? key}) : super(key: key);

  @override
  _StoreScreenState createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            DrawerHeader(
              child: Center(
                child: Text(
                  "Mayor Farm Store",
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w900,
                      color: kSecondaryColor),
                ),
              ),
            ),
            MobMenu()
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              //header
              HeaderContainer(),
              //body
              BodyContainer(),
              //footer
              SizedBox(
                height: 30,
              ),
              Footer(),
              //now we make our website responsive
            ],
          ),
        ),
      ),
    );
  }
}
