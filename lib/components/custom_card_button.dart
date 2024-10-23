import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCardButton extends StatelessWidget {
  void Function()? function;
  Color color;
  Color textColor;
  num width;
  String text;
  CustomCardButton(
      {super.key,
      required this.text,
      required this.color,
      required this.textColor,
      required this.width,
      required this.function});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      radius: 2,
      onTap: function,
      child: Container(
        height: 34,
        width: screenWidth * width,
        margin: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: Colors.grey.shade300)],
          borderRadius: BorderRadius.circular(6),
          gradient: LinearGradient(
            colors: [
              Colors.orange,
              Colors.yellow
            ], // Replace with your desired gradient colors
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontFamily: 'Roboto',
              color: textColor,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
