import 'package:flutter/material.dart';
import 'package:getx_api_may27/core/api/apis.dart';

void main() {
  runApp(apiGetxApp());
}

class apiGetxApp extends StatelessWidget {
  const apiGetxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              getNumFact(num: 90);
            },
            child: Text("Get Result")),
      ),
    );
  }
}
