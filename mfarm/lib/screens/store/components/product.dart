// ignore_for_file: prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:mfarm/model/product_model.dart';

import '../../../constants.dart';

class Products extends StatelessWidget {
  const Products({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);
  final Product product;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kPadding / 2),
      child: InkWell(
        onTap: press,
        child: Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(15),
          child: Container(
            padding: EdgeInsets.all(5.0),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    product.image,
                  ),
                ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child:Column(
                    children: [
                      
                      Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Flexible(
                      child: AutoSizeText(
                  product.title,
                  maxLines: 1,
                  minFontSize: 12,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                      )
                    ],
                  ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Flexible(
                      child: Text("₦" + product.price.toString(),
                        style: TextStyle(
                            fontSize: 18.0,
                            color: kSecondaryColor,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                      )
                    ],
                  ),
                    ],
                  )
                ),
              ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
