import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:twyn_app/utils.dart';
import 'package:flutter/gestures.dart';

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
              color: Color(0xffffffff),
            ),
            child: Container(
              // backgroundYXp (18:21)
              padding: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 20 * fem),
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
                          0 * fem, 0 * fem, 0 * fem, 60 * fem),
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
                      child: Stack(
                        children: [
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
