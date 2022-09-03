// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mfarm/model/product_model.dart';
import 'package:mfarm/model/responsive.dart';
import 'package:mfarm/screens/store/components/farmstore_section.dart';
import 'package:mfarm/screens/store/components/product.dart';
import 'package:mfarm/screens/vest/components/invest.dart';

import '../../../constants.dart';

class BodyContainer extends StatelessWidget {
  const BodyContainer({
    Key? key,
  }) : super(key: key);
  
  
  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(kPadding),
      constraints: BoxConstraints(maxWidth: kMaxWidth),
      child: Column(
        children: [
          FarmstoreSection(),
          ProductCard(),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
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

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
  }) : super(key: key);
  
  final String image, title, desc, price;
  final int id;

  @override
  Widget build(BuildContext context) {
    return 
        return ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: InkWell(
              onTap: () {
                print('tapped');
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    column,
                    column,
                  ],
                ),
              ),
            ),
          );
        }
      );
      }
  }
}
