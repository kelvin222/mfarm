// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mfarm/model/product_model.dart';
import 'package:mfarm/model/responsive.dart';
import 'package:mfarm/screens/store/components/farmstore_section.dart';
import 'package:mfarm/screens/store/components/product.dart';

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
          //now we create model of our product images
          // we are using gridview inside column and scrollview widget thats why we are facing error
          // use shrinkwrap and ScrollPhysics widget
          Responsive(
            desktop: ProductCard(
              crossAxiscount: _size.width > 825 ? 2 : 2,
              aspectRatio: _size.width > 560 ? 0.85 : 0.90,
            ),
            tablet: ProductCard(
              crossAxiscount: _size.width > 690 ? 1 : 2,
              aspectRatio: _size.width < 560 ? 0.85 : 0.8,
            ),
            mobile: ProductCard(
              crossAxiscount: _size.width < 690 ? 1 : 2,
              aspectRatio: _size.width < 560 ? 0.85 : 0.8,
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    this.crossAxiscount = 2,
    this.aspectRatio = 0.8,
  }) : super(key: key);
  final int crossAxiscount;
  final double aspectRatio;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxiscount,
        childAspectRatio: aspectRatio,
      ),
      itemBuilder: (context, index) => Products(
        press: () {},
        product: products[index],
      ),
      itemCount: products.length,
    );
  }
}
