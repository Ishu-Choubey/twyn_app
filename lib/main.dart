import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: MainPage(),
    ));

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.purpleAccent,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF591755),
                Color(0xFFA23A5D),
              ],
            ),
          ),
        ),
      );
}
