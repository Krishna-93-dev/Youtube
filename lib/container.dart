import 'package:flutter/material.dart';
import 'package:flutter_application_krushnesh/color/app_color.dart';

class CustomContainer extends StatelessWidget {
  final double height;
  final double width;
  final Color Colorss;
  final String imageurl;
  final double apnaradius;

  const CustomContainer({
    super.key,
    required this.height,
    required this.width,
    this.Colorss = AppColor.primarycolor,
    required this.imageurl,
    this.apnaradius = 12,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Colorss,
        borderRadius: BorderRadius.circular(apnaradius),
        image: DecorationImage(
          image: NetworkImage(
            "https://images.unsplash.com/photo-1751904083454-2ce5f84cb943?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHw3fHx8ZW58MHx8fHx8",
          ),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
