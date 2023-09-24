import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/constants/global_variables.dart';
import 'package:flutter/material.dart';

class CarouselImage extends StatelessWidget {
  const CarouselImage({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: GlobalVariables.carouselImages.map(
        (i) {
          return Builder(
            builder: (BuildContext context) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black12)),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      i,
                      fit: BoxFit.cover,
                      height: 200,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ).toList(),
      options: CarouselOptions(
        autoPlay: true,
        viewportFraction: 1,
        height: 200,
      ),
    );
  }
}
