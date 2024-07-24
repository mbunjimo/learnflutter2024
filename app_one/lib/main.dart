import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> restaurants = [
    'Kwa mama',
    'utamu',
    'juliana',
    'mezanine',
    'hot wings',
    'kfc',
    'pizza hut'
  ];

  int restaurantsIndex = 1;

  void _incrementIndex() {
    setState(() {
      restaurantsIndex = (restaurantsIndex + 1) % restaurants.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "what do you prefer, or what do you want to eat?",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          Text(
            restaurants[restaurantsIndex],
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
          ),
          const Padding(padding:  EdgeInsets.all(20.0)),
          Center(child: FloatingActionButton(onPressed: _incrementIndex,backgroundColor: Colors.black,)),
          
        ],
      )),
    ));
  }
}
