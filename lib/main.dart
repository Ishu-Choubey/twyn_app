import 'package:flutter/material.dart';
import 'package:twyn_app/firebase_options.dart';
import './Screen/loginpage.dart';
import './Screen/login.dart';
import 'utils.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

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
      home: StreamBuilder(
        stream:FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot)
        {
          if(snapshot.hasData)
            return Login();
          else
            return LoginPage();
        },
      ) //entering login page
    );
  }
}
