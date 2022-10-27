import 'package:flutter/material.dart';
import 'package:pemesanan_coffe/models/Product.dart';
import 'package:pemesanan_coffe/screens/components/detail_produk.dart';

import '../../../constants.dart';
import 'product_card.dart';
import 'section.dart';

class NewArrival extends StatelessWidget {
  const NewArrival({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Section(
            title: "Terbaru",
            pressSeeAll: () {},
          ),
        ),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              demo_product.length,
              (index) => Padding(
                padding: const EdgeInsets.only(right: defaultPadding),
                child: ProductCard(
                  title: demo_product[index].title,
                  image: demo_product[index].image,
                  price: demo_product[index].price,
                  bgColor: demo_product[index].bgColor,
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              DetailProduk(product: demo_product[index]),
                        ));
                  },
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

