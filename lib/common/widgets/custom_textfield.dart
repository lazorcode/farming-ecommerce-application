import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final int maxLines;
  const CustomTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      this.maxLines = 1});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.zero.copyWith(left: 10),
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
                12.0), // Adjust the border radius as needed
            borderSide: BorderSide(color: Colors.black38),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
                7.0), // Adjust the border radius as needed
            borderSide: BorderSide(color: Colors.black38),
          ),
        ),
        validator: (val) {
          if (val == null || val.isEmpty) {
            return "Enter your $hintText";
          }
          return null;
        },
        maxLines: maxLines,
      ),
    );
  }
}
