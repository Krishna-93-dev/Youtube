import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterApplication extends StatefulWidget {
  const CounterApplication({Key? key}) : super(key: key);

  @override
  State<CounterApplication> createState() => _CounterApplicationState();
}

class _CounterApplicationState extends State<CounterApplication> {
  String meassage = "Hello wait";
  double grade = 0.0;
  /*
  Future<void> _tableof2
  //INCREMENT 
  // DECREMENT
  
  () async {
    int i = 1;
    //for (int i = 0; i < 100;i++)
      while (i <= 10) {
        print('2 x $i = ${2 * i}');
        setState(() {
          num = 2 * i;
        });
        i++;
        await Future.delayed(const Duration(milliseconds: 1111100));
      }
  }
  */
/*
  Future<String> getData() async {
    await Future.delayed(const Duration(seconds: 2));
    return "Hello this is for waiting session for u ";
  }

  Future<void> fetchData() async {
    String data = await getData();
    setState(() {
      meassage = data;
    });
  }
*/






  Future<String> getData() async {
    await Future.delayed(const Duration(seconds: 2));
    return "Hello this is for waiting session for u ";
  }

  Future<double> getExtraData() async {
    await Future.delayed(const Duration(seconds: 2));
    return 2.0;
  }

 
  Future<void> fetchData() async {
    String data = await getData();
    setState(() {
      meassage = data;
    });
  }

  
  Future<void> fetchDataMessageOnly() async {
    await getData(); 
    setState(() {
      meassage = "FETCHING DATA";
    });
  }

  // Fetch extra double value and update grade
  Future<void> fetchExtraData() async {
    double data = await getExtraData();
    setState(() {
      grade = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Future Function"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              meassage,
              style: const TextStyle(fontSize: 20),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            "Grade: $grade",
            style: const TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: fetchData,
                child: Text("ADDMESGGEGE")
               
              ),
              const SizedBox(width: 20),
              FloatingActionButton(
                onPressed: fetchExtraData,
          child: Text("gradeshow")
              ),
            ],
          )
        ],
      ),
    );
  }
}
