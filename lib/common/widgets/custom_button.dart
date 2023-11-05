import 'package:ecommerce/constants/global_variables.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color? color;
  const CustomButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(

          // minimumSize: const Size(double.infinity, 45),
          primary: GlobalVariables.secondaryColor,
          onPrimary: GlobalVariables.selectedNavBarColor,
          elevation: 7),
      child: Text(
        text,
        style: TextStyle(
          color: color == null ? Colors.black : Colors.black,
        ),
      ),
    );
  }
}
