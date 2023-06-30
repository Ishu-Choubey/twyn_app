import 'dart:math';

import 'package:flutter/material.dart';
import 'package:twyn_app/Screen/login.dart';
import 'package:twyn_app/utils.dart';
import 'loginpage.dart';
import 'package:twyn_app/functions/authFunctions.dart';

class Signuppage extends StatefulWidget {
  @override
  State<Signuppage> createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
  final gmailcont = TextEditingController();
  final passcont = TextEditingController();
  final namecont = TextEditingController();
  final phonenocont = TextEditingController();
  bool login = true;
  bool nameerror=false;
  bool phoneerror=false;
  bool emailerror=false;
  bool passerror=false;
  bool isExpandedn=false;
  bool isExpandedp=false;
  bool isExpandede=false;
  bool isExpandedpa=false;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: (isExpandedn || isExpandedp || isExpandede || isExpandedpa) && !login ? 950 * fem : MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.center,
              colors: [Color(0xFFE15766), Color(0xFF541655)],
            ),
          ),
          child: Stack(
            children: [
              // Positioned(
              //   // lineelements2M3 (67:35)
              //     left: 0 * fem,
              //     top: 0 * fem,
              //     child: Container(
              //         width: 1488.58 * fem,
              //         height: 2806.38 * fem,
              //         child: Stack(
              //             children: [
              //               Positioned(
              //                 // lineelement2k29 (67:36)
              //                 left: 0 * fem,
              //                 top: 0 * fem,
              //                 child: Align(
              //                   child: SizedBox(
              //                     // width: 450 * fem,
              //                     // height: 200 * fem,
              //                     child: Image.asset(
              //                       'images/l1.png',
              //                       fit: BoxFit.cover,
              //                     ),
              //                   ),
              //                 ),
              //               ),
              //               Positioned(
              //                 // lineelement3etD (67:37)
              //                 left: 0 * fem,
              //                 top: 280* fem,
              //                 child: Align(
              //                   child: SizedBox(
              //                     // width: 500 * fem,
              //                     // height:  * fem,
              //                     child: Image.asset(
              //                       'images/l2.png',
              //                       fit: BoxFit.cover,
              //                     ),
              //                   ),
              //                 ),
              //               ),
              //             ]))),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 90 * fem, 0, 5 * fem),
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
                    ), //hell
                  ), //hell
                  Container(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(5 * fem, 0 * fem, 0, 10 * fem),
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
                  ), //bheh bleh
                  Container(
                    margin:
                        EdgeInsets.fromLTRB(50 * fem, 30 * fem, 50 * fem, 10 * fem),
                    padding:
                        EdgeInsets.fromLTRB(30 * fem, 70 * fem, 30 * fem, 70 * fem),
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
                                5 * fem, 0 * fem, 0 * fem, 20 * fem),
                            constraints: BoxConstraints(
                              maxWidth: 265 * fem,
                            ),
                            child: Text(
                              !login?
                              'Thank You for connecting with us. Please Enter your details:':
                                  'Please enter your login credentials',
                              style: SafeGoogleFont(
                                'Helvetica',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.2575 * ffem / fem,
                                color: Color(0xffFFFFFF),
                              ),
                            ),
                          ),
                          Form(
                            key: formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                !login? Padding(
                                  padding:
                                      EdgeInsets.fromLTRB(0, 10 * fem, 0, 3 * fem),
                                  child: Container(
                                    width: double.infinity,
                                    height: 45 * fem,
                                    decoration: BoxDecoration(
                                        color: Color(0x33fafafa),
                                        borderRadius: BorderRadius.circular(33 * fem),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x120000000),
                                            offset: Offset(7 * fem, 6 * fem),
                                            blurRadius: 5 * fem,
                                          ),
                                        ]),
                                    child: TextFormField(
                                      controller: namecont,
                                      decoration: InputDecoration(
                                        prefixIcon:
                                            Icon(Icons.person, color: Colors.white),
                                        contentPadding: EdgeInsets.fromLTRB(
                                            10.0 * fem, 0.0, 25.0 * fem, 10.0 * fem),
                                        fillColor: Color(0x33D9B6C3),
                                        filled: true,
                                        hintText: "Your Name",
                                        hintStyle: TextStyle(
                                            fontSize: 15 * fem,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0x95ffffff)),
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius:
                                              BorderRadius.circular(500 * fem),
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
                                      validator: (value){
                                        if(value!.isEmpty ||
                                            !RegExp(r'^[a-z A-Z]+$')
                                                .hasMatch(value!))
                                          {
                                            setState(() {
                                              nameerror=true;
                                              isExpandedn=true;
                                            });
                                            //return "Enter Correct Name";
                                          }
                                        else
                                          {
                                            setState(() {
                                              isExpandedn=false;
                                              nameerror=false;
                                            });
                                            return null;
                                          }
                                      },
                                    ),
                                  ),

                                ): Container(), //namepass
                                nameerror && !login? Container(
                                  margin: EdgeInsets.fromLTRB(
                                      10 * fem, 0 * fem, 0 * fem, 0 * fem),
                                  width: double.infinity,
                                  child: Text(
                                    'Please enter a valid name',
                                    textAlign: TextAlign.left,
                                    style: SafeGoogleFont(
                                      'Helvetica',
                                      fontSize: 12 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.25 * ffem / fem,
                                      color: Color(0xff6c0000),
                                    ),
                                  ),
                                ):Container(),
                                !login? Padding(
                                  padding:
                                      EdgeInsets.fromLTRB(0, 20 * fem, 0, 3 * fem),
                                  child: Container(
                                    width: double.infinity,
                                    height: 45 * fem,
                                    decoration: BoxDecoration(
                                        color: Color(0x33fafafa),
                                        borderRadius: BorderRadius.circular(33 * fem),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x120000000),
                                            offset: Offset(7 * fem, 6 * fem),
                                            blurRadius: 5 * fem,
                                          ),
                                        ]),
                                    child: TextFormField(
                                      controller: phonenocont,
                                      decoration: InputDecoration(
                                        prefixIcon:
                                            Icon(Icons.phone, color: Colors.white),
                                        contentPadding: EdgeInsets.fromLTRB(
                                            10.0 * fem, 0.0, 25.0 * fem, 10.0 * fem),
                                        fillColor: Color(0x33D9B6C3),
                                        filled: true,
                                        hintText: "Phone number",
                                        hintStyle: TextStyle(
                                            fontSize: 15 * fem,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0x95ffffff)),
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius:
                                              BorderRadius.circular(500 * fem),
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
                                      validator: (value){

                                        if(value!.isEmpty || !RegExp(r'^(\+91|\+91\-|0)?[789]\d{9}$').hasMatch(value!))
                                        {
                                          setState(() {
                                            phoneerror=true;
                                            isExpandedp=true;
                                          });
                                          //return "Enter Correct Phone Number";
                                        }
                                        else
                                        {
                                          setState(() {
                                            isExpandedp=false;
                                            phoneerror=false;
                                          });
                                          return null;
                                        }
                                      },
                                    ),
                                  ),
                                ): Container(), //phonenopass
                                phoneerror && !login? Container(
                                  margin: EdgeInsets.fromLTRB(
                                      10 * fem, 0 * fem, 0 * fem, 0 * fem),
                                  width: double.infinity,
                                  child: Text(
                                    'Please enter a valid phone number',
                                    textAlign: TextAlign.left,
                                    style: SafeGoogleFont(
                                      'Helvetica',
                                      fontSize: 12 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.25 * ffem / fem,
                                      color: Color(0xff6c0000),
                                    ),
                                  ),
                                ):Container(),
                                Padding(
                                  padding:
                                      EdgeInsets.fromLTRB(0, 20 * fem, 0, 3 * fem),
                                  child: Container(
                                    width: double.infinity,
                                    height: 45 * fem,
                                    decoration: BoxDecoration(
                                        color: Color(0x33fafafa),
                                        borderRadius: BorderRadius.circular(33 * fem),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x120000000),
                                            offset: Offset(7 * fem, 6 * fem),
                                            blurRadius: 5 * fem,
                                          ),
                                        ]),
                                    child: TextFormField(
                                      controller: gmailcont,
                                      decoration: InputDecoration(
                                        prefixIcon:
                                            Icon(Icons.mail, color: Colors.white),
                                        contentPadding: EdgeInsets.fromLTRB(
                                            10.0 * fem, 0.0, 25.0 * fem, 10.0 * fem),
                                        fillColor: Color(0x33D9B6C3),
                                        filled: true,
                                        hintText: "User Email",
                                        hintStyle: TextStyle(
                                            fontSize: 15 * fem,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0x95ffffff)),
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius:
                                              BorderRadius.circular(500 * fem),
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
                                      validator: (value){
                                        if(value!.isEmpty ||
                                            !RegExp(r'^(([^<>()[\]\\!#$%&*+-/=?^_`{|}~.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                                                .hasMatch(value!))
                                            {
                                          setState(() {
                                            isExpandede=true;
                                            emailerror=true;
                                          });
                                          //return "Enter Correct Email";
                                        }
                                        else
                                        {
                                          setState(() {
                                            isExpandede=false;
                                            emailerror=false;
                                          });
                                          return null;
                                        }
                                      },
                                    ),
                                  ),
                                ), //mailpass
                                emailerror? Container(
                                  margin: EdgeInsets.fromLTRB(
                                      10 * fem, 0 * fem, 0 * fem, 0 * fem),
                                  width: double.infinity,
                                  child: Text(
                                    'Please enter a valid email',
                                    textAlign: TextAlign.left,
                                    style: SafeGoogleFont(
                                      'Helvetica',
                                      fontSize: 12 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.25 * ffem / fem,
                                      color: Color(0xff6c0000),
                                    ),
                                  ),
                                ):Container(),
                                Padding(
                                  padding:
                                      EdgeInsets.fromLTRB(0, 15 * fem, 0, 0 * fem),
                                  child: Container(
                                    width: double.infinity,
                                    height: 45 * fem,
                                    decoration: BoxDecoration(
                                        color: Color(0x33fafafa),
                                        borderRadius: BorderRadius.circular(33 * fem),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x120000000),
                                            offset: Offset(7 * fem, 6 * fem),
                                            blurRadius: 5 * fem,
                                          ),
                                        ]),
                                    child: TextFormField(
                                      obscureText: true,
                                      controller: passcont,
                                      decoration: InputDecoration(
                                        prefixIcon:
                                            Icon(Icons.password, color: Colors.white),
                                        contentPadding: EdgeInsets.fromLTRB(
                                            25.0, 20.0, 5.0, 10.0),
                                        fillColor: Color(0x33D9B6C3),
                                        filled: true,
                                        hintText: "Password",
                                        hintStyle: TextStyle(
                                            fontSize: 15 * fem,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0x95ffffff)),
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius:
                                              BorderRadius.circular(500 * fem),
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
                                      validator: (value){
                                        if(value!.isEmpty ||
                                            !RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                                                .hasMatch(value))
                                        {
                                          setState(() {
                                            isExpandedpa=true;
                                            passerror=true;
                                          });
                                          return null;
                                        }
                                        else
                                        {
                                          setState(() {
                                            isExpandedpa=false;
                                            passerror=false;
                                          });
                                          return null;
                                        }
                                      },
                                    ),
                                  ),
                                ), //passpass
                                passerror? Container(
                                  margin: EdgeInsets.fromLTRB(
                                      10 * fem, 3 * fem, 0 * fem, 0 * fem),
                                  width: double.infinity,
                                  child: Text(
                                    'Password must contain atleast 1 uppercase, 1 lowercase, 1 numeric number and 1 special character( ! @ # & * ~ )',
                                    textAlign: TextAlign.left,
                                    style: SafeGoogleFont(
                                      'Helvetica',
                                      fontSize: 12 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.25 * ffem / fem,
                                      color: Color(0xff6c0000),
                                    ),
                                  ),
                                ):Container(),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 15 * fem, 0, 0),
                                  child: Container(
                                    // trackLrJ (18:31)
                                    margin: EdgeInsets.fromLTRB(
                                        31 * fem, 0 * fem, 31 * fem, 0 * fem),
                                    child: TextButton(
                                      onPressed: () {
                                        if(formKey.currentState!.validate()) {
                                          if (nameerror==false && passerror==false && emailerror==false && phoneerror==false) {
                                            login ? signinUser(
                                                gmailcont.text, passcont.text,
                                                context) :
                                            signupUser(
                                                gmailcont.text, passcont.text,
                                                namecont.text, phonenocont.text,
                                                context);
                                          }
                                        }
                                      },
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
                                          height: 45 * fem,
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
                                                !login?
                                                'Sign up': 'Login',
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
                                ), //login
                                Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      0, 0 * fem, 0 * fem, 0 * fem),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        //width: double.infinity,
                                        child: Text(
                                          !login?
                                          'Already have an account?':'New to Twyn?',
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
                                        height: 20 * fem,
                                        child: TextButton(
                                          style: TextButton.styleFrom(
                                            padding: EdgeInsets.fromLTRB(
                                                0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              login=!login;
                                            });
                                          },
                                          child: Text(
                                            !login?
                                            'Login!':'Create Account!',
                                            textAlign: TextAlign.left,
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
                                    ],
                                  ),
                                ), //forgetpass
                              ],
                            ),
                          )
                        ]),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
