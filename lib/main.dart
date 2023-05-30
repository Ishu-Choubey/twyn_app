import 'package:flutter/material.dart';
import './Screen/login.dart';
import './Screen/order-page.dart';
import './Screen/submitted-page.dart';
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
      theme: ThemeData(
        fontFamily: 'Helvetica'
      ),
      title: 'Tywn Login Page',
      home:LoginPage(),
    );
  }
}