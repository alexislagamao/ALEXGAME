// ignore_for_file: prefer_const_constructors, unused_import

import 'bug.dart';
import 'package:flutter/material.dart';

import 'cards.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Carlist(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Carlist extends StatefulWidget {
  const Carlist({Key? key}) : super(key: key);

  @override
  State<Carlist> createState() => _HomePageState();
}

class _HomePageState extends State<Carlist> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/backG.jpg"),
        fit: BoxFit.fill,
      )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          Text(
            '\n\nHigh-Low Card Game',
            style: TextStyle(
              fontFamily: ('Alex'),
              fontSize: 90.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 70.0),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => CardGame()));
            },
            child: Text('Start Game',
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: ('Alex'))),
          ),
        ],
      ),
    );
  }
}
