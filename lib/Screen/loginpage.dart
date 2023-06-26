import 'package:flutter/material.dart';
import 'package:twyn_app/Screen/login.dart';
import 'package:twyn_app/Screen/order-page.dart';
import 'package:twyn_app/utils.dart';
import 'submitted-page.dart';
import 'track-page.dart';
import 'track-id.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final gmailcont = TextEditingController();
  final passcont = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.center,
              colors: [Color(0xFFE15766), Color(0xFF541655)],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 110*fem, 0, 5*fem),
                  child: Align(
                    child: SizedBox(
                      width: 300 * fem,
                      height: 100 * fem,
                      child: Image.asset(
                        'images/twyn-logo-color-2.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),//hell
              ),//hell
              Container(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(5*fem, 0*fem, 0, 10*fem),
                  child: SizedBox(
                    width: 280 * fem,
                    height: 38 * fem,
                    child: Text(
                      'Immersive, AI-powered Digital Twins for Smart Factories',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Helvetica',
                        fontSize: 15 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2575 * ffem / fem,
                        color: Color(0xffFFDBE8),
                      ),
                    ),
                  ),
                ),
              ),//bheh bleh
              Container(
                margin: EdgeInsets.fromLTRB(
                    50 * fem, 30 * fem, 50 * fem, 10 * fem),
                padding: EdgeInsets.fromLTRB(
                    30 * fem, 70 * fem, 30 * fem, 70 * fem),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0x50ffffff),
                  borderRadius: BorderRadius.circular(33 * fem),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x26000000),
                      offset: Offset(7 * fem, 6 * fem),
                      blurRadius: 6 * fem,
                    ),
                  ],
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            5 * fem, 0 * fem, 0 * fem, 3 * fem),
                        constraints: BoxConstraints(
                          maxWidth: 265 * fem,
                        ),
                        child: Text(
                          'HELLO!!!',
                          style: SafeGoogleFont(
                            'Helvetica',
                            fontSize: 30 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.2575 * ffem / fem,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            5 * fem, 0 * fem, 0 * fem, 30 * fem),
                        constraints: BoxConstraints(
                          maxWidth: 265 * fem,
                        ),
                        child: Text(
                          'Please enter using your login details',
                          style: SafeGoogleFont(
                            'Helvetica',
                            fontSize: 14 * ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.2575 * ffem / fem,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding:EdgeInsets.fromLTRB(0, 10*fem, 0, 10*fem),
                            child: Container(
                              width: double.infinity,
                              height: 45*fem,
                              decoration: BoxDecoration(
                                  color: Color(0x33fafafa),
                                  borderRadius:
                                  BorderRadius.circular(33 * fem),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x120000000),
                                      offset: Offset(7 * fem, 6 * fem),
                                      blurRadius: 5 * fem,
                                    ),
                                  ]),
                              child: TextFormField  (
                                controller: gmailcont,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.mail, color: Colors.white),
                                  contentPadding: EdgeInsets.fromLTRB(
                                      10.0*fem, 0.0, 25.0*fem, 10.0*fem),
                                  fillColor: Color(0x33D9B6C3),
                                  filled: true,
                                  hintText: "User Email",
                                  hintStyle: TextStyle(
                                      fontSize: 15*fem,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0x95ffffff)),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(
                                        500 * fem),
                                  ),
                                  disabledBorder: InputBorder.none,
                                ),
                                style: SafeGoogleFont(
                                  'Helvetica',
                                  fontSize: 17.5 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.25 * ffem / fem,
                                  color: Color(0xff4C313A),
                                ),
                              ),
                            ),
                          ),//mailpass
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 15*fem, 0, 0*fem),
                            child: Container(
                              width: double.infinity,
                              height: 45*fem,
                              decoration: BoxDecoration(
                                  color: Color(0x33fafafa),
                                  borderRadius:
                                  BorderRadius.circular(33 * fem),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x120000000),
                                      offset: Offset(7 * fem, 6 * fem),
                                      blurRadius: 5 * fem,
                                    ),
                                  ]),
                              child: TextField  (
                                controller: passcont,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.password, color: Colors.white),
                                  contentPadding: EdgeInsets.fromLTRB(
                                      25.0, 20.0, 5.0, 10.0),
                                  fillColor: Color(0x33D9B6C3),
                                  filled: true,
                                  hintText: "Password",
                                  hintStyle: TextStyle(
                                      fontSize: 15*fem,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0x95ffffff)),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(
                                        500 * fem),
                                  ),
                                  disabledBorder: InputBorder.none,
                                ),
                                style: SafeGoogleFont(
                                  'Helvetica',
                                  fontSize: 17.5 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.25 * ffem / fem,
                                  color: Color(0xff4C313A),
                                ),
                              ),
                            ),
                          ),//passpass
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0*fem, 15*fem, 5*fem),
                            child: Container(
                              width: double.infinity,
                              height: 45*fem,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  textStyle: TextStyle(fontSize: 14),
                                  alignment: Alignment.topRight,
                                ),
                                onPressed: null,
                                child: Text(
                                  'Forgot password?',
                                  textAlign: TextAlign.end,
                                  style: SafeGoogleFont(
                                    'Helvetica',
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2575 * ffem / fem,
                                    color: Color(0xff541655),
                                  ),
                                ),
                              ),
                            ),
                          ),//forgetpass
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0*fem, 0, 0),
                            child: Container(
                              // trackLrJ (18:31)
                              margin: EdgeInsets.fromLTRB(
                                  31 * fem, 0 * fem, 31 * fem, 0 * fem),
                              child: TextButton(
                                onPressed:  ()=> {Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login())),},
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                ),
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(
                                      15 * fem, 13 * fem, 15 * fem, 5 * fem),
                                  width: double.infinity,
                                  height: 55 * fem,
                                  child: Container(
                                    // frame11FiN (I18:31;440:2040)
                                    width: double.infinity,
                                    height: 45*fem,
                                    decoration: BoxDecoration(
                                        color: Color(0x70fafafa),
                                        borderRadius:
                                        BorderRadius.circular(33 * fem),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x120000000),
                                            offset: Offset(7 * fem, 6 * fem),
                                            blurRadius: 5 * fem,
                                          ),
                                        ]),
                                    child: Center(
                                      child: Center(
                                        child: Text(
                                          'Login',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont(
                                            'Helvetica',
                                            fontSize: 17 * ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.2575 * ffem / fem,
                                            color: Color(0xFFFFFFFF),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),//login
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0*fem, 0*fem, 0*fem),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  //width: double.infinity,
                                  child: Text(
                                    'New to Twyn?',
                                    // textAlign: TextAlign.center,
                                    style: SafeGoogleFont(
                                      'Helvetica',
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.2575 * ffem / fem,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(
                                  //width: double.infinity,
                                  child: Text(
                                    'Create Account!',
                                    //textAlign: TextAlign.center,
                                    style: SafeGoogleFont(
                                      'Helvetica',
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.2575 * ffem / fem,
                                      color: Color(0xff541655),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),//forgetpass
                        ],
                      )
                    ]
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}



