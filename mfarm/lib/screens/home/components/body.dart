import 'package:flutter/material.dart';
import 'package:mfarm/model/product_model.dart';
import 'package:mfarm/model/responsive.dart';
import 'package:mfarm/screens/home/components/farmstore_section.dart';
import 'package:mfarm/screens/home/components/farmvest_section.dart';
import 'package:mfarm/screens/home/components/product.dart';
import 'package:mfarm/screens/home/components/services_card.dart';

import '../../../constants.dart';
import 'email_banner.dart';

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
          ServicesCard(),
          FarmstoreSection(),
          //now we create model of our product images
          // we are using gridview inside column and scrollview widget thats why we are facing error
          // use shrinkwrap and ScrollPhysics widget
          Responsive(
            desktop: ProductCard(
              crossAxiscount: _size.width > 650 ? 2 : 3,
              aspectRatio: _size.width > 560 ? 0.85 : 0.90,
            ),
            tablet: ProductCard(
              crossAxiscount: _size.width > 825 ? 2 : 3,
              aspectRatio: _size.width > 560 ? 0.85 : 0.95,
            ),
            mobile: ProductCard(
              crossAxiscount: _size.width < 690 ? 2 : 3,
              aspectRatio: _size.width < 560 ? 0.85 : 0.8,
            ),
          ),
          FarmvestSection(),
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
    this.crossAxiscount = 3,
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
