import 'package:flutter/material.dart';
import './Screen/login.dart';
import './Screen/order-page.dart';
import './Screen/submitted-page.dart';
import 'utils.dart';
import 'dart:ui';
import 'package:flutter/gestures.dart';
import './Screen/track-page.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      scrollBehavior: MyCustomScrollBehavior(),
      theme: ThemeData(
        fontFamily: 'Helvetica'
      ),
      title: 'Tywn Login Page',
      home:Scaffold(
        body: SingleChildScrollView(
          child: Scene(),
        ),
      ),
    );
  }
}