import 'package:flutter/material.dart';
import 'package:twyn_app/Screen/track-page.dart';
import 'package:twyn_app/firebase_options.dart';
import './Screen/login.dart';
import './Screen/order-page.dart';
import './Screen/submitted-page.dart';
import 'utils.dart';
import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
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
      home: LoginPage(), //entering login page
    );
  }
}
