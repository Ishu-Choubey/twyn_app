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
          padding: EdgeInsets.fromLTRB(20*fem, 60*fem, 20*fem, 20*fem),
          child: Container(
            // isubmittedscreenLo8 (18:20)
            width: double.infinity,
            height: 827*fem,
            decoration: BoxDecoration (
              color: Color(0xffffffff),
              borderRadius: BorderRadius.circular(50*fem),
            ),
            child: Container(
              // backgroundYXp (18:21)
              padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 60*fem),
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration (
                color: Color(0xfff6f3f3),
                borderRadius: BorderRadius.circular(50*fem),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // headingCsG (18:51)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 72.54*fem),
                    width: double.infinity,
                    height: 196.46*fem,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50*fem),
                        topLeft: Radius.circular(50*fem),
                      ),
                      color: Color(0xff4D1354),
                      image: DecorationImage (
                        fit: BoxFit.cover,
                        image: AssetImage (
                          'images/mask-group.png',
                        ),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          // twynlogocolor21Zp (18:56)
                          left: 83.3811035156*fem,
                          top: 23.0479736328*fem,
                          child: Align(
                            child: SizedBox(
                              width: 263.94*fem,
                              height: 118.53*fem,
                              child: Image.asset(
                                'images/twyn-logo-color-2.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // immersiveaipowereddigitaltwins (18:57)
                          left: 81.9296264648*fem,
                          top: 134.7653808594*fem,
                          child: Align(
                            child: SizedBox(
                              width: 265*fem,
                              height: 38*fem,
                              child: Text(
                                'Immersive, AI-powered Digital Twins for Smart Factories',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Helvetica',
                                  fontSize: 15*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.2575*ffem/fem,
                                  color: Color(0xffb43f67),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupdwrniWA (Xp2uW5Bq3bTJBt4wBzDwrn)
                    margin: EdgeInsets.fromLTRB(49*fem, 0*fem, 49*fem, 0*fem),
                    padding: EdgeInsets.fromLTRB(30*fem, 48*fem, 37*fem, 58*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xfffafafa),
                      borderRadius: BorderRadius.circular(33*fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x26000000),
                          offset: Offset(7*fem, 6*fem),
                          blurRadius: 6*fem,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}