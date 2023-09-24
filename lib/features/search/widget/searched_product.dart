import 'package:ecommerce/common/widgets/stars.dart';
import 'package:ecommerce/models/product.dart';
import 'package:flutter/material.dart';

class SearchedProduct extends StatelessWidget {
  final Product product;
  const SearchedProduct({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double totalRating = 0;
    for (int i = 0; i < product.rating!.length; i++) {
      totalRating += product.rating![i].rating;
    }
    double avgRating = 0;
    if (totalRating != 0) {
      avgRating = totalRating / product.rating!.length;
    }
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black12)),
          margin: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black12)),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      product.images[0],
                      fit: BoxFit.cover,
                      height: 135,
                      width: 130,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 200,
                child: Column(
                  children: [
                    Container(
                      width: 235,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        product.name,
                        style: const TextStyle(
                          fontSize: 15,
                        ),
                        maxLines: 2,
                      ),
                    ),
                    Container(
                      width: 235,
                      padding: const EdgeInsets.only(left: 10, top: 5),
                      child: Stars(
                        rating: avgRating,
                      ),
                    ),
                    Container(
                      width: 235,
                      padding: const EdgeInsets.only(left: 10, top: 5),
                      child: Text(
                        '\$${product.price}',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 2,
                      ),
                    ),
                    Container(
                      width: 235,
                      padding: const EdgeInsets.only(left: 10),
                      child: const Text('Eligible for FREE Shipping'),
                    ),
                    Container(
                      width: 235,
                      padding: const EdgeInsets.only(left: 10, top: 5),
                      child: const Text(
                        'In Stock',
                        style: TextStyle(
                          color: Colors.teal,
                        ),
                        maxLines: 2,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
