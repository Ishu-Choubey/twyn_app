import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:twyn_app/utils.dart';


class Scenenew extends StatelessWidget {
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
            height: 932*fem,
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // hijondoethankyouforchoosingtwy (18:25)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 81*fem),
                          constraints: BoxConstraints (
                            maxWidth: 265*fem,
                          ),
                          child: Text(
                            'Hi Jon Doe,\n\nThank you for choosing Twyn! Your order has been received and is now being processed. \n\nPlease use the oder ID below to track your order.',
                            style: SafeGoogleFont (
                              'Helvetica',
                              fontSize: 14*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2575*ffem/fem,
                              color: Color(0xff7c7979),
                            ),
                          ),
                        ),
                        Container(
                          // orderidMhY (18:26)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 189*fem, 5*fem),
                          child: Text(
                            'ORDER ID:',
                            style: SafeGoogleFont (
                              'Helvetica',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2575*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),Container(
                          // autogroupxduidyp (Xp2uh4sWWAfQWNr13oxdUi)
                          margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 50*fem),
                          width:  264*fem,
                          height:  38*fem,
                          decoration:  BoxDecoration (
                            color:  Color(0xffeaeaea),
                            borderRadius:  BorderRadius.circular(15*fem),
                            boxShadow:  [
                              BoxShadow(
                                color:  Color(0x26000000),
                                offset:  Offset(5*fem, 6*fem),
                                blurRadius:  6*fem,
                              ),
                            ],
                          ),
                          child:
                          Center(
                            child:
                            Text(
                              'FTS_RD_200_000001',
                              textAlign:  TextAlign.center,
                              style:  SafeGoogleFont (
                                'Helvetica',
                                fontSize:  12*ffem,
                                fontWeight:  FontWeight.w300,
                                height:  1.2575*ffem/fem,
                                color:  Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // placeRav (18:30)
                          margin: EdgeInsets.fromLTRB(31*fem, 0*fem, 31*fem, 0*fem),
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(16.5*fem, 10*fem, 16.5*fem, 13*fem),
                              width: double.infinity,
                              height: 63*fem,
                              child: Container(
                                // frame9gWr (I18:30;440:2031)
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  color: Color(0xff4e1455),
                                  borderRadius: BorderRadius.circular(30*fem),
                                ),
                                child: Center(
                                  child: Center(
                                    child: Text(
                                      'PLACE ANOTHER ORDER',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Helvetica',
                                        fontSize: 13*ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2575*ffem/fem,
                                        color: Color(0xfff6f4f4),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // trackLrJ (18:31)
                          margin: EdgeInsets.fromLTRB(30*fem, 0*fem, 32*fem, 0*fem),
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(16.5*fem, 10*fem, 16.5*fem, 14*fem),
                              width: double.infinity,
                              height: 64*fem,
                              child: Container(
                                // frame11FiN (I18:31;440:2040)
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  color: Color(0xff4e1455),
                                  borderRadius: BorderRadius.circular(30*fem),
                                ),
                                child: Center(
                                  child: Center(
                                    child: Text(
                                      'TRACK YOUR ORDER',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Helvetica',
                                        fontSize: 13*ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2575*ffem/fem,
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}