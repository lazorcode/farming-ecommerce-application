import 'package:flutter/material.dart';

class OBScreen2 extends StatelessWidget {
  const OBScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              // 'assets/images/icon.png',
              'assets/images/ob2.png',
              width: 270,
              height: 230,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            "Making things easier for village farmers",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
              "Farmers can sell their agricultural products and get more results than before, which is now a little more."),
          const SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
