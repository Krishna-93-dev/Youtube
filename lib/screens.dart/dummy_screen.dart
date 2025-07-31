import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DummyScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class DummyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('dummy screen'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Flexible Widget
            Flexible(
              flex: 1,
              child: Container(
                width: double.infinity,
                color: const Color.fromARGB(255, 247, 150, 4),
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(8),
                child: Text(
                  'jay Hind ',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
        
        
        
        
        Flexible(
              flex: 1,
              child: Container(
                width: double.infinity,
                color: const Color.fromARGB(255, 234, 230, 226),
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(8),
                child: Text(
                  'jay bharat ',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
        
        
        
            
        Flexible(
              flex: 1,
              child: Container(
                width: double.infinity,
                color: const Color.fromARGB(255, 23, 207, 41),
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(8),
                child: Text(
                  'vande mataram',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
         
            // Expanded(
            //   flex: 3,
            //   child: Container(
            //     width: double.infinity,
            //     color: const Color.fromARGB(255, 245, 245, 247),
            //     alignment: Alignment.topLeft,
            //     padding: EdgeInsets.all(8),
            //     child: Text(
            //       'middle of flag',
            //       style: TextStyle(color: Colors.black),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}