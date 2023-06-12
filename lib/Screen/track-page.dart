import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:twyn_app/utils.dart';
import 'package:flutter/gestures.dart';
import 'submitted-page.dart';
import 'package:flutter/foundation.dart';
import 'package:timeline_tile/timeline_tile.dart';

class Track extends StatelessWidget {
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
            height: 1300 * fem,
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
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 30 * fem, 0 * fem, 30 * fem),
                        child: Text(
                          'Order Tracing and Tracking',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Helvetica',
                            fontSize: 30 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.2575 * ffem / fem,
                            color: Color(0xff79324c),
                          ),
                        ),
                      ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          55 * fem, 0 * fem, 55 * fem, 25 * fem),
                      child: Row(
                        children: [
                          Text(
                            'Order Status',
                            style: SafeGoogleFont(
                              'Helvetica',
                              fontSize: 20 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2575 * ffem / fem,
                              color: Color(0xffBC4772),
                            ),
                          ),
                          Expanded(
                            child: Container(
                                margin: EdgeInsets.fromLTRB(
                                    10 * fem, 7 * fem, 0 * fem, 0 * fem),
                                child: ClipRRect(
                              borderRadius: BorderRadius.circular(30.0),
                              child: Container(
                                color: Color(0xffBC4772),
                                height: 3,
                            ),
                          )
                          ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.fromLTRB(
                            60 * fem, 0 * fem, 60 * fem, 0 * fem),
                        width: double.infinity,
                      decoration: BoxDecoration(
                          color: Color(0xfffafafa),
                          borderRadius:
                          BorderRadius.circular(33 * fem),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x120000000),
                              offset: Offset(7 * fem, 6 * fem),
                              blurRadius: 6 * fem,
                            ),
                          ]),

                      child: Table(
                        columnWidths: {
                          0: FixedColumnWidth(150*fem),// fixed to 100 width
                        },
                        border: TableBorder.symmetric(
                          outside: BorderSide.none,
                          inside: const BorderSide(width: 1, color: Color(0xffD9D9D9), style: BorderStyle.solid),
                        ),
                        children: [
                          TableRow(
                            children: [
                              TableCell(
                                verticalAlignment: TableCellVerticalAlignment.fill,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xffF0F0F0),
                                    borderRadius:
                                    BorderRadius.only(
                                      topLeft: Radius.circular(33*fem),
                                    ),
                                  ),
                                  child: Padding(padding: EdgeInsets.fromLTRB(20*fem, 11*fem, 10*fem, 10*fem),
                                      child: Center(
                                        child: Text("Customer Name:",
                                            style: SafeGoogleFont(
                                              'Helvetica',
                                              fontSize: 14.5 * ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.2575 * ffem / fem,
                                              color: Color(0xffA8A8A8),)),
                                      )
                                  ),
                                ),),
                                Padding(padding: EdgeInsets.fromLTRB(20*fem, 10*fem, 10*fem, 10*fem),
                                    child: Text(
                                        "Yui",
                                        style: SafeGoogleFont(
                                          'Helvetica',
                                          fontSize: 14.5 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2575 * ffem / fem,
                                          color: Color(0xffA8A8A8),
                                        )
                                    )
                                ),
                            ]
                          ),
                          TableRow(
                              children: [
                                TableCell(
                                  verticalAlignment: TableCellVerticalAlignment.fill,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xffF0F0F0),
                                    ),
                                    child: Padding(padding: EdgeInsets.fromLTRB(10*fem, 10*fem, 10*fem, 10*fem),
                                        child: Center(
                                          child: Text("Product Color:",
                                              style: SafeGoogleFont(
                                                'Helvetica',
                                                fontSize: 14.5 * ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.2575 * ffem / fem,
                                                color: Color(0xffA8A8A8),)),
                                        )
                                    ),
                                  ),),
                                Padding(padding: EdgeInsets.fromLTRB(20*fem, 10*fem, 10*fem, 10*fem),
                                    child: Text("Red",
                                        style: SafeGoogleFont(
                                          'Helvetica',
                                          fontSize: 14.5 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2575 * ffem / fem,
                                          color: Color(0xffA8A8A8),))
                                ),
                              ]
                          ),
                          TableRow(
                              children: [
                                TableCell(
                                  verticalAlignment: TableCellVerticalAlignment.fill,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xffF0F0F0),
                                    ),
                                    child: Padding(padding: EdgeInsets.fromLTRB(30*fem, 10*fem, 10*fem, 10*fem),
                                        child: Center(
                                          child: Text("Product Quantity:",
                                              style: SafeGoogleFont(
                                                'Helvetica',
                                                fontSize: 14.5 * ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.2575 * ffem / fem,
                                                color: Color(0xffA8A8A8),)),
                                        )
                                    ),
                                  ),),
                                Padding(padding: EdgeInsets.fromLTRB(
                                    20 * fem, 10 * fem, 15 * fem, 10 * fem),
                                    child: Text("200gm",
                                        style: SafeGoogleFont(
                                          'Helvetica',
                                          fontSize: 14.5 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2575 * ffem / fem,
                                          color: Color(0xffA8A8A8),))
                                ),
                              ]
                          ),
                          TableRow(

                              children: [
                                TableCell(
                                  verticalAlignment: TableCellVerticalAlignment.fill,
                                  child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xffF0F0F0),
                                    borderRadius:
                                    BorderRadius.only(
                                      bottomLeft: Radius.circular(33*fem),
                                    ),
                                  ),
                                  child: Padding(padding: EdgeInsets.fromLTRB(10*fem, 10*fem, 10*fem, 10*fem),
                                      child: Center(
                                        child: Text("Current Status:",
                                            style: SafeGoogleFont(
                                              'Helvetica',
                                              fontSize: 14.5 * ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.2575 * ffem / fem,
                                              color: Color(0xffA8A8A8),)),
                                      )
                                  ),
                                ),),

                                Padding(padding: EdgeInsets.fromLTRB(
                                    20 * fem, 10 * fem, 15 * fem, 10 * fem),
                                    child: Text("Product Is At Dispach Unit",
                                        style: SafeGoogleFont(
                                          'Helvetica',
                                          fontSize: 14.5 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2575 * ffem / fem,
                                          color: Color(0xffA8A8A8),))
                                ),
                              ]
                          ),
                        ],
                      )
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          55 * fem, 20 * fem, 55 * fem, 0 * fem),
                      child: Row(
                        children: [
                          Text(
                            'Track Order',
                            style: SafeGoogleFont(
                              'Helvetica',
                              fontSize: 20 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2575 * ffem / fem,
                              color: Color(0xffBC4772),
                            ),
                          ),
                          Expanded(
                            child: Container(
                                margin: EdgeInsets.fromLTRB(
                                    10 * fem, 7 * fem, 0 * fem, 0 * fem),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30.0),
                                  child: Container(
                                    color: Color(0xffBC4772),
                                    height: 3,
                                  ),
                                )
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(60*fem, 20*fem, 60*fem, 20*fem),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Color(0xfffafafa),
                            borderRadius:
                            BorderRadius.circular(33 * fem),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x120000000),
                                offset: Offset(7 * fem, 6 * fem),
                                blurRadius: 6 * fem,
                              ),
                            ]),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(30*fem,25*fem,10*fem,25*fem),
                          child: Column(
                            children: [
                              TimelineTile(
                                indicatorStyle: IndicatorStyle(
                                  width: 13*fem,
                                  color: Color(0xffCCCBCB),
                                ),
                                isFirst: true,
                                afterLineStyle: LineStyle(
                                  color: Color(0xffCCCBCB),
                                  thickness: 3*fem,
                                ),
                                endChild: Padding(
                                  padding: EdgeInsets.fromLTRB(15*fem,0,0,0),
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Color(0xffCCCBCB),
                                            borderRadius: BorderRadius.circular(50*fem)
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(10*fem),
                                          child: Icon(Icons.shopping_cart,
                                              size: 25*fem,
                                              color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Padding(
                                          padding: EdgeInsets.fromLTRB(10*fem,25*fem,0*fem,25*fem),
                                          child: RichText(
                                            text: TextSpan(
                                              text: 'Material loading\n',
                                              style: SafeGoogleFont(
                                                      'Helvetica',
                                                      fontSize: 14.5 * ffem,
                                                      fontWeight: FontWeight.bold,
                                                      height: 1.2575 * ffem / fem,
                                                      color: Color(0xff777777),
                                                ),
                                              children: <TextSpan>[
                                                TextSpan(
                                                    text: 'The material has been loaded',
                                                    style: SafeGoogleFont(
                                                            'Helvetica',
                                                            fontSize: 14.5 * ffem,
                                                            fontWeight: FontWeight.w500,
                                                            height: 1.2575 * ffem / fem,
                                                            color: Color(0xff777777),)
                                                ),
                                              ],
                                            ),
                                          )
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                ),
                              TimelineTile(
                                indicatorStyle: IndicatorStyle(
                                  width: 13*fem,
                                  color: Color(0xffCCCBCB),
                                ),
                                afterLineStyle: LineStyle(
                                  color: Color(0xffCCCBCB),
                                  thickness: 3*fem,
                                ),
                                beforeLineStyle: LineStyle(
                                  color: Color(0xffCCCBCB),
                                  thickness: 3*fem,
                                ),
                                endChild: Padding(
                                  padding: EdgeInsets.fromLTRB(15*fem,0,0,0),
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Color(0xffCCCBCB),
                                            borderRadius: BorderRadius.circular(50*fem)
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(10*fem),
                                          child: Icon(Icons.message,
                                            size: 25*fem,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Padding(
                                            padding: EdgeInsets.fromLTRB(10*fem,25*fem,0*fem,25*fem),
                                            child: RichText(
                                              text: TextSpan(
                                                text: 'Material loading\n',
                                                style: SafeGoogleFont(
                                                  'Helvetica',
                                                  fontSize: 14.5 * ffem,
                                                  fontWeight: FontWeight.bold,
                                                  height: 1.2575 * ffem / fem,
                                                  color: Color(0xff777777),
                                                ),
                                                children: <TextSpan>[
                                                  TextSpan(
                                                      text: 'The material has been loaded',
                                                      style: SafeGoogleFont(
                                                        'Helvetica',
                                                        fontSize: 14.5 * ffem,
                                                        fontWeight: FontWeight.w500,
                                                        height: 1.2575 * ffem / fem,
                                                        color: Color(0xff777777),)
                                                  ),
                                                ],
                                              ),
                                            )
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              TimelineTile(
                                indicatorStyle: IndicatorStyle(
                                  width: 13*fem,
                                  color: Color(0xffCCCBCB),
                                ),
                                afterLineStyle: LineStyle(
                                  color: Color(0xffCCCBCB),
                                  thickness: 3*fem,
                                ),
                                beforeLineStyle: LineStyle(
                                  color: Color(0xffCCCBCB),
                                  thickness: 3*fem,
                                ),
                                endChild: Padding(
                                  padding: EdgeInsets.fromLTRB(15*fem,0,0,0),
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Color(0xffCCCBCB),
                                            borderRadius: BorderRadius.circular(50*fem)
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(10*fem),
                                          child: Icon(Icons.message,
                                            size: 25*fem,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Padding(
                                            padding: EdgeInsets.fromLTRB(10*fem,25*fem,0*fem,25*fem),
                                            child: RichText(
                                              text: TextSpan(
                                                text: 'Material loading\n',
                                                style: SafeGoogleFont(
                                                  'Helvetica',
                                                  fontSize: 14.5 * ffem,
                                                  fontWeight: FontWeight.bold,
                                                  height: 1.2575 * ffem / fem,
                                                  color: Color(0xff777777),
                                                ),
                                                children: <TextSpan>[
                                                  TextSpan(
                                                      text: 'The material has been loaded',
                                                      style: SafeGoogleFont(
                                                        'Helvetica',
                                                        fontSize: 14.5 * ffem,
                                                        fontWeight: FontWeight.w500,
                                                        height: 1.2575 * ffem / fem,
                                                        color: Color(0xff777777),)
                                                  ),
                                                ],
                                              ),
                                            )
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),TimelineTile(
                                indicatorStyle: IndicatorStyle(
                                  width: 13*fem,
                                  color: Color(0xffCCCBCB),
                                ),
                                afterLineStyle: LineStyle(
                                  color: Color(0xffCCCBCB),
                                  thickness: 3*fem,
                                ),
                                beforeLineStyle: LineStyle(
                                  color: Color(0xffCCCBCB),
                                  thickness: 3*fem,
                                ),
                                endChild: Padding(
                                  padding: EdgeInsets.fromLTRB(15*fem,0,0,0),
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Color(0xffCCCBCB),
                                            borderRadius: BorderRadius.circular(50*fem)
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(10*fem),
                                          child: Icon(Icons.message,
                                            size: 25*fem,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Padding(
                                            padding: EdgeInsets.fromLTRB(10*fem,25*fem,0*fem,25*fem),
                                            child: RichText(
                                              text: TextSpan(
                                                text: 'Material loading\n',
                                                style: SafeGoogleFont(
                                                  'Helvetica',
                                                  fontSize: 14.5 * ffem,
                                                  fontWeight: FontWeight.bold,
                                                  height: 1.2575 * ffem / fem,
                                                  color: Color(0xff777777),
                                                ),
                                                children: <TextSpan>[
                                                  TextSpan(
                                                      text: 'The material has been loaded',
                                                      style: SafeGoogleFont(
                                                        'Helvetica',
                                                        fontSize: 14.5 * ffem,
                                                        fontWeight: FontWeight.w500,
                                                        height: 1.2575 * ffem / fem,
                                                        color: Color(0xff777777),)
                                                  ),
                                                ],
                                              ),
                                            )
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),TimelineTile(
                                indicatorStyle: IndicatorStyle(
                                  width: 13*fem,
                                  color: Color(0xffCCCBCB),
                                ),
                                afterLineStyle: LineStyle(
                                  color: Color(0xffCCCBCB),
                                  thickness: 3*fem,
                                ),
                                beforeLineStyle: LineStyle(
                                  color: Color(0xffCCCBCB),
                                  thickness: 3*fem,
                                ),
                                endChild: Padding(
                                  padding: EdgeInsets.fromLTRB(15*fem,0,0,0),
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Color(0xffCCCBCB),
                                            borderRadius: BorderRadius.circular(50*fem)
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(10*fem),
                                          child: Icon(Icons.message,
                                            size: 25*fem,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Padding(
                                            padding: EdgeInsets.fromLTRB(10*fem,25*fem,0*fem,25*fem),
                                            child: RichText(
                                              text: TextSpan(
                                                text: 'Material loading\n',
                                                style: SafeGoogleFont(
                                                  'Helvetica',
                                                  fontSize: 14.5 * ffem,
                                                  fontWeight: FontWeight.bold,
                                                  height: 1.2575 * ffem / fem,
                                                  color: Color(0xff777777),
                                                ),
                                                children: <TextSpan>[
                                                  TextSpan(
                                                      text: 'The material has been loaded',
                                                      style: SafeGoogleFont(
                                                        'Helvetica',
                                                        fontSize: 14.5 * ffem,
                                                        fontWeight: FontWeight.w500,
                                                        height: 1.2575 * ffem / fem,
                                                        color: Color(0xff777777),)
                                                  ),
                                                ],
                                              ),
                                            )
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),TimelineTile(
                                indicatorStyle: IndicatorStyle(
                                  width: 13*fem,
                                  color: Color(0xffCCCBCB),
                                ),
                                afterLineStyle: LineStyle(
                                  color: Color(0xffCCCBCB),
                                  thickness: 3*fem,
                                ),
                                beforeLineStyle: LineStyle(
                                  color: Color(0xffCCCBCB),
                                  thickness: 3*fem,
                                ),
                                endChild: Padding(
                                  padding: EdgeInsets.fromLTRB(15*fem,0,0,0),
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Color(0xffCCCBCB),
                                            borderRadius: BorderRadius.circular(50*fem)
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(10*fem),
                                          child: Icon(Icons.message,
                                            size: 25*fem,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Padding(
                                            padding: EdgeInsets.fromLTRB(10*fem,25*fem,0*fem,25*fem),
                                            child: RichText(
                                              text: TextSpan(
                                                text: 'Material loading\n',
                                                style: SafeGoogleFont(
                                                  'Helvetica',
                                                  fontSize: 14.5 * ffem,
                                                  fontWeight: FontWeight.bold,
                                                  height: 1.2575 * ffem / fem,
                                                  color: Color(0xff777777),
                                                ),
                                                children: <TextSpan>[
                                                  TextSpan(
                                                      text: 'The material has been loaded',
                                                      style: SafeGoogleFont(
                                                        'Helvetica',
                                                        fontSize: 14.5 * ffem,
                                                        fontWeight: FontWeight.w500,
                                                        height: 1.2575 * ffem / fem,
                                                        color: Color(0xff777777),)
                                                  ),
                                                ],
                                              ),
                                            )
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),TimelineTile(
                                indicatorStyle: IndicatorStyle(
                                  width: 13*fem,
                                  color: Color(0xffCCCBCB),
                                ),
                                isLast: true,
                                beforeLineStyle: LineStyle(
                                  color: Color(0xffCCCBCB),
                                  thickness: 3*fem,
                                ),
                                endChild: Padding(
                                  padding: EdgeInsets.fromLTRB(15*fem,0,0,0),
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Color(0xffCCCBCB),
                                            borderRadius: BorderRadius.circular(50*fem)
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(10*fem),
                                          child: Icon(Icons.message,
                                            size: 25*fem,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Padding(
                                            padding: EdgeInsets.fromLTRB(10*fem,25*fem,0*fem,25*fem),
                                            child: RichText(
                                              text: TextSpan(
                                                text: 'Material loading\n',
                                                style: SafeGoogleFont(
                                                  'Helvetica',
                                                  fontSize: 14.5 * ffem,
                                                  fontWeight: FontWeight.bold,
                                                  height: 1.2575 * ffem / fem,
                                                  color: Color(0xff777777),
                                                ),
                                                children: <TextSpan>[
                                                  TextSpan(
                                                      text: 'The material has been loaded',
                                                      style: SafeGoogleFont(
                                                        'Helvetica',
                                                        fontSize: 14.5 * ffem,
                                                        fontWeight: FontWeight.w500,
                                                        height: 1.2575 * ffem / fem,
                                                        color: Color(0xff777777),)
                                                  ),
                                                ],
                                              ),
                                            )
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
                      ),
                  ]
              ),
            ),
          ),
        ),
      ),
    );
  }
}
