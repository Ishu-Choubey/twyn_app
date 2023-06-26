import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:twyn_app/Screen/order-page.dart';
import 'package:twyn_app/utils.dart';
import 'submitted-page.dart';
import 'track-page.dart';
import 'track-id.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: 944 * fem,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.center,
            colors: [Color(0xFFE15766), Color(0xFF541655)],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 0 * fem,
              top: 0 * fem,
              child: Container(
                width: 1488.58 * fem,
                height: 2806.38 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      // lineelements2M3 (67:35)
                      left: 0 * fem,
                      top: 0 * fem,
                      child: Container(
                        width: 1488.58 * fem,
                        height: 2806.38 * fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // lineelement2k29 (67:36)
                              left: 0 * fem,
                              top: 0 * fem,
                              child: Align(
                                child: SizedBox(
                                  // width: 450 * fem,
                                  // height: 200 * fem,
                                  child: Image.asset(
                                    'images/l1.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // lineelement3etD (67:37)
                              left: 0 * fem,
                              top: 280* fem,
                              child: Align(
                                child: SizedBox(
                                  // width: 500 * fem,
                                  // height:  * fem,
                                  child: Image.asset(
                                    'images/l2.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // immersiveaipowereddigitaltwins (67:39)
                              left: 60.0682983398 * fem,
                              top: 415 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 309 * fem,
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
                            ),
                            Positioned(
                              // twynlogowhite1285 (67:40)
                              left: 53.2540893555 * fem,
                              top: 305 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 322.63 * fem,
                                  height: 115 * fem,
                                  child: Image.asset(
                                    'images/twyn-logo-color-2.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // place8S1 (67:41)
                              left: 94 * fem,
                              top: 505 * fem,
                              child: TextButton(
                                onPressed:  ()=> {Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Order())),},
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                ),
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(
                                      10 * fem, 10 * fem, 10 * fem, 10 * fem),
                                  width: 239 * fem,
                                  height: 75 * fem,
                                  child: Container(
                                    // frame9dNm (I67:41;440:2013)
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xff2C0031),
                                      borderRadius:
                                      BorderRadius.circular(30 * fem),
                                    ),
                                    child: Center(
                                      child: Center(
                                        child: Text(
                                          'PLACE A NEW ORDER',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont(
                                            'Helvetica',
                                            fontSize: 17 * ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.2575 * ffem / fem,
                                            color: Color(0xffFFDBE8),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // track7Yq (67:42)
                              left: 94 * fem,
                              top: 575 * fem,
                              child: TextButton(
                                onPressed:  ()=> {Navigator.of(context).push(MaterialPageRoute(builder: (context)=> trackid())),},
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                ),
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(
                                      10 * fem, 10 * fem, 10 * fem, 10 * fem),
                                  width: 241 * fem,
                                  height: 75 * fem,
                                  child: Container(
                                    // frame11RJd (I67:42;440:2022)
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xff2C0031),
                                      borderRadius:
                                      BorderRadius.circular(30 * fem),
                                    ),
                                    child: Center(
                                      child: Center(
                                        child: Text(
                                          'TRACK YOUR ORDER',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont(
                                            'Helvetica',
                                            fontSize: 17 * ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.2575 * ffem / fem,
                                            color: Color(0xffFFDBE8),
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
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
