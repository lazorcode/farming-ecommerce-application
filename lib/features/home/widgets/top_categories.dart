import 'package:ecommerce/constants/global_variables.dart';
import 'package:ecommerce/features/home/screens/category_deals_screen.dart';
import 'package:flutter/material.dart';

class TopCategories extends StatelessWidget {
  const TopCategories({super.key});

  void navigateToCategoryPage(BuildContext context, String category) {
    Navigator.pushNamed(context, CategoryDealsScreen.routeName,
        arguments: category);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 78,
      child: ListView.builder(
        itemCount: GlobalVariables.categoryImages.length,
        scrollDirection: Axis.horizontal,
        itemExtent: 86,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => navigateToCategoryPage(
              context,
              GlobalVariables.categoryImages[index]['title']!,
            ),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12),
                      borderRadius: BorderRadius.circular(50)),
                  padding: const EdgeInsets.all(1),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset(
                      GlobalVariables.categoryImages[index]['image']!,
                      fit: BoxFit.cover,
                      height: 57,
                      width: 67,
                    ),
                  ),
                ),
                Text(
                  GlobalVariables.categoryImages[index]['title']!,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
