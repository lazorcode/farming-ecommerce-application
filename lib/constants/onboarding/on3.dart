import 'package:flutter/material.dart';

class OBScreen3 extends StatelessWidget {
  const OBScreen3({super.key});

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
              'assets/images/ob3.png',
              width: 270,
              height: 230,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            "Learn From Experts",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
              "Get analysis, suggestions, and tips from India's top agro experts and boost your yields."),
          const SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
