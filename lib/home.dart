import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_krushnesh/container.dart';
import 'package:flutter_application_krushnesh/screens.dart/custom_button.dart';
//import 'package:flutter_application_krushnesh/screens.dart/custom_container.dart'; // Add this if your container is in another file

class Home11 extends StatefulWidget {
  const Home11({super.key});

  @override
  State<Home11> createState() => _Home11State();
}

class _Home11State extends State<Home11> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home11")), // optional AppBar
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ytbutton(
              buttonText: 'Click Me',
              onpressed: () {
                print('Button Pressed');
              },
              backgroundcolor: Colors.blue,
              textcolor: Colors.white,
              borderradius: 12.0,
              bold: FontWeight.bold,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            ),
            const SizedBox(height: 20),
            CustomContainer(
              height: 200,
              width: 500,
              Colorss: Colors.blue,
              apnaradius: 20,
              imageurl:
                  "https://images.unsplash.com/photo-1751904083454-2ce5f84cb943?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHw3fHx8ZW58MHx8fHx8",
            ),
          ],
        ),
      ),
    );
  }
}
