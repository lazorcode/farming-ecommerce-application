import 'package:flutter/material.dart';

class OBScreen1 extends StatelessWidget {
  const OBScreen1({super.key});

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
              'assets/images/ob1.png',
              width: 270,
              height: 230,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            "Quality Agricultural Products",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
              "The harvest has just been picked and is still fresh from the farmer's garden which is sold here and sold at an affordable price."),
          const SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
