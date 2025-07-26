import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class DummyScreen extends StatefulWidget {
  const DummyScreen({super.key});

  @override
  State<DummyScreen> createState() => _DummyScreenState();
}

class _DummyScreenState extends State<DummyScreen> {
  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: Text("Dummy Screen"), 
      
      backgroundColor: Colors.blue),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: screenheight * 0.7,
            width: screenWidth * 0.6,
            color: Colors.blue,
            child: Text(
              "dummy sccreen of this portion  ",
              style: TextStyle(fontSize: screenWidth * 0.09),
            ),
          )
        ],
      ),
    );
  }
}
