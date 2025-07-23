import 'package:flutter/material.dart';

class ytbutton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onpressed;
  final Color backgroundcolor;
  final Color textcolor;
  final double borderradius;
  final FontWeight bold;
  final EdgeInsetsGeometry padding;

  const ytbutton({
    super.key,
    required this.buttonText,
    required this.onpressed,
    this.textcolor = Colors.yellow,
    this.borderradius = 3.0,
    required this.bold,
    this.backgroundcolor = Colors.white,
    this.padding = const EdgeInsets.symmetric(horizontal: 23, vertical: 14),
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onpressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundcolor,
        foregroundColor: textcolor,
        padding: padding,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderradius),
        ),
      ),
      child: Text(
        buttonText,
        style: TextStyle(fontSize: 12,
          fontWeight: bold,
        ),
      ),
    );
  }
}
