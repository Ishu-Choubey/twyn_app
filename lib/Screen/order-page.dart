import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:twyn_app/utils.dart';
import 'package:flutter/gestures.dart';
import 'submitted-page.dart';
import 'package:flutter/foundation.dart';

class Order extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 450;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Container(
            // isubmittedscreenLo8 (18:20)
            width: double.infinity,
            height: 920 * fem,
            decoration: BoxDecoration(
              color: Color(0xffE1E1E1),
            ),
            child: Container(
              // backgroundYXp (18:21)
              padding: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 10 * fem),
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xfff6f3f3),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // headingCsG (18:51)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 0 * fem),
                      width: double.infinity,
                      height: 222 * fem,
                      decoration: BoxDecoration(
                        color: Color(0xff4D1354),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'images/mask-group.png',
                          ),
                        ),
                      ),
                      child: Stack(children: [
                        Positioned(
                          // twynlogocolor21Zp (18:56)
                          left: 83.3811035156 * fem,
                          top: 50 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 270 * fem,
                              height: 120 * fem,
                              child: Image.asset(
                                'images/twyn-logo-color-2.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // immersiveaipowereddigitaltwins (18:57)
                          left: 85 * fem,
                          top: 157 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 265 * fem,
                              height: 38 * fem,
                              child: Text(
                                'Immersive, AI-powered Digital Twins for Smart Factories',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont(
                                  'Helvetica',
                                  fontSize: 15 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.2575 * ffem / fem,
                                  color: Color(0xffb43f67),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                    Container(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 30 * fem, 0 * fem, 30 * fem),
                              child: Text(
                                'Place Your Order',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont(
                                  'Helvetica',
                                  fontSize: 30 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.2575 * ffem / fem,
                                  color: Color(0xff79324c),
                                ),
                              ),
                            )
                          ]),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          45 * fem, 0 * fem, 45 * fem, 0 * fem),
                      padding: EdgeInsets.fromLTRB(
                          30 * fem, 40 * fem, 30 * fem, 40 * fem),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xfffafafa),
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
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                8 * fem, 0 * fem, 8 * fem, 20 * fem),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // nameo4A (77:283)
                                  margin: EdgeInsets.fromLTRB(
                                      5 * fem, 0 * fem, 0 * fem, 17 * fem),
                                  child: Text(
                                    'Name:',
                                    style: SafeGoogleFont(
                                      'Helvetica',
                                      fontSize: 19 * ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.2575 * ffem / fem,
                                      color: Color(0xffbc4772),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color(0xfffafafa),
                                        borderRadius: BorderRadius.circular(33*fem),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x120000000),
                                            offset: Offset(7*fem, 6*fem),
                                            blurRadius: 6*fem,
                                          ),
                                        ]
                                    ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.fromLTRB(
                                          15.0, 5.0, 5.0, 10.0),
                                      fillColor: Color(0xffF6F6F6),
                                      filled: true,
                                      hintText: "Eg. Jon Doe",
                                      hintStyle: TextStyle(color: Color(0xffa7a7a7)),
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.circular(500 * fem),
                                      ),
                                      disabledBorder:InputBorder.none,
                                    ),
                                    style: SafeGoogleFont(
                                      'Helvetica',
                                      fontSize: 17.5 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.25 * ffem / fem,
                                      color: Color(0xff545252),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(),
                          Container(),
                          Container(),
                          Container(
                            // trackLrJ (18:31)
                            margin: EdgeInsets.fromLTRB(
                                31 * fem, 0 * fem, 31 * fem, 0 * fem),
                            child: TextButton(
                              onPressed: () => {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Submit())),
                              },
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(
                                    60 * fem, 13 * fem, 60 * fem, 13 * fem),
                                width: double.infinity,
                                height: 64 * fem,
                                child: Container(
                                  // frame11FiN (I18:31;440:2040)
                                  width: double.infinity,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color(0xff4e1455),
                                    borderRadius:
                                        BorderRadius.circular(30 * fem),
                                  ),
                                  child: Center(
                                    child: Center(
                                      child: Text(
                                        'Submit',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont(
                                          'Helvetica',
                                          fontSize: 17 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2575 * ffem / fem,
                                          color: Color(0xfff6f4f4),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
