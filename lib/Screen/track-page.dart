import 'dart:async';

import 'login.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:twyn_app/utils.dart';
import 'package:flutter/gestures.dart';
import 'submitted-page.dart';
import 'package:flutter/foundation.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:twyn_app/my_flutter_app_icons.dart';

class Track extends StatefulWidget {
  double quantity_;
  String name_="",color_="",status_="";
  Track({required this.name_, required this.color_, required this.quantity_});

  @override
  State<Track> createState() => _TrackState();
}

class _TrackState extends State<Track> {
  dynamic _color1 = Color(0xffcccbcb);
  dynamic _color2 = Color(0xffcccbcb);
  dynamic _color3 = Color(0xffcccbcb);
  dynamic _color4 = Color(0xffcccbcb);
  dynamic _color5 = Color(0xffcccbcb);
  dynamic _color6 = Color(0xffcccbcb);
  dynamic _color7 = Color(0xffcccbcb);
  int count=0;
  late Timer timer;

  @override
  void initState() {
    timer = Timer.periodic(Duration(seconds: 5), (timer) {
      setState(() {
        count++;
      });
      if(count==1)
        {
          setState(() {
            _color1=Color(0xffBC4772);
          });
        }
      if(count==2)
      {
        setState(() {
          _color2=Color(0xffBC4772);
        });
      }if(count==3)
      {
        setState(() {
          _color3=Color(0xffBC4772);
        });
      }if(count==4)
      {
        setState(() {
          _color4=Color(0xffBC4772);
        });
      }if(count==5)
      {
        setState(() {
          _color5=Color(0xffBC4772);
        });
      }if(count==6)
      {
        setState(() {
          _color6=Color(0xffBC4772);
        });
      }if(count==7)
      {
        setState(() {
          _color7=Color(0xffBC4772);
        });
      }
      if(count==8)
      {
        timer.cancel();
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 450;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed:  ()=> {Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Login())),},
        backgroundColor: Color(0xff4D1354),
        child: Icon(
          Icons.home_rounded,
          size: 40*fem,
        ),
      ),
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
                                        "${widget.name_}",
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
                                    child: Text("${widget.color_}",
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
                                    child: Text("${widget.quantity_}gm",
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
                                  color: _color1,
                                ),
                                isFirst: true,
                                afterLineStyle: LineStyle(
                                  color: _color1,
                                  thickness: 3*fem,
                                ),
                                endChild: Padding(
                                  padding: EdgeInsets.fromLTRB(15*fem,0,0,0),
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: _color1,
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
                                  color: _color2,
                                ),
                                afterLineStyle: LineStyle(
                                  color: _color2,
                                  thickness: 3*fem,
                                ),
                                beforeLineStyle: LineStyle(
                                  color: _color1,
                                  thickness: 3*fem,
                                ),
                                endChild: Padding(
                                  padding: EdgeInsets.fromLTRB(15*fem,0,0,0),
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: _color2,
                                            borderRadius: BorderRadius.circular(50*fem)
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(10*fem),
                                          child: Icon(MyFlutterApp.group_1502,
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
                                                text: 'Material Inspection\n',
                                                style: SafeGoogleFont(
                                                  'Helvetica',
                                                  fontSize: 14.5 * ffem,
                                                  fontWeight: FontWeight.bold,
                                                  height: 1.2575 * ffem / fem,
                                                  color: Color(0xff777777),
                                                ),
                                                children: <TextSpan>[
                                                  TextSpan(
                                                      text: 'The material has been Inspected',
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
                                  color: _color3,
                                ),
                                afterLineStyle: LineStyle(
                                  color: _color3,
                                  thickness: 3*fem,
                                ),
                                beforeLineStyle: LineStyle(
                                  color: _color2,
                                  thickness: 3*fem,
                                ),
                                endChild: Padding(
                                  padding: EdgeInsets.fromLTRB(15*fem,0,0,0),
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: _color3,
                                            borderRadius: BorderRadius.circular(50*fem)
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(10*fem),
                                          child: Icon(MyFlutterApp.vector_1_,
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
                                                text: 'Filing\n',
                                                style: SafeGoogleFont(
                                                  'Helvetica',
                                                  fontSize: 14.5 * ffem,
                                                  fontWeight: FontWeight.bold,
                                                  height: 1.2575 * ffem / fem,
                                                  color: Color(0xff777777),
                                                ),
                                                children: <TextSpan>[
                                                  TextSpan(
                                                      text: 'The material went for filling',
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
                                  color: _color4,
                                ),
                                afterLineStyle: LineStyle(
                                  color: _color4,
                                  thickness: 3*fem,
                                ),
                                beforeLineStyle: LineStyle(
                                  color: _color3,
                                  thickness: 3*fem,
                                ),
                                endChild: Padding(
                                  padding: EdgeInsets.fromLTRB(15*fem,0,0,0),
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: _color4,
                                            borderRadius: BorderRadius.circular(50*fem)
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(10*fem),
                                          child: Icon(MyFlutterApp.vector_2_,
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
                                                text: 'Quality Inspection\n',
                                                style: SafeGoogleFont(
                                                  'Helvetica',
                                                  fontSize: 14.5 * ffem,
                                                  fontWeight: FontWeight.bold,
                                                  height: 1.2575 * ffem / fem,
                                                  color: Color(0xff777777),
                                                ),
                                                children: <TextSpan>[
                                                  TextSpan(
                                                      text: 'Quality of material is inspected',
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
                                  color: _color5,
                                ),
                                afterLineStyle: LineStyle(
                                  color: _color5,
                                  thickness: 3*fem,
                                ),
                                beforeLineStyle: LineStyle(
                                  color: _color4,
                                  thickness: 3*fem,
                                ),
                                endChild: Padding(
                                  padding: EdgeInsets.fromLTRB(15*fem,0,0,0),
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: _color5,
                                            borderRadius: BorderRadius.circular(50*fem)
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(10*fem),
                                          child: Icon(MyFlutterApp.group_1502,
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
                                                text: 'Filled\n',
                                                style: SafeGoogleFont(
                                                  'Helvetica',
                                                  fontSize: 14.5 * ffem,
                                                  fontWeight: FontWeight.bold,
                                                  height: 1.2575 * ffem / fem,
                                                  color: Color(0xff777777),
                                                ),
                                                children: <TextSpan>[
                                                  TextSpan(
                                                      text: 'The material has been filled',
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
                                  color: _color6,
                                ),
                                afterLineStyle: LineStyle(
                                  color: _color6,
                                  thickness: 3*fem,
                                ),
                                beforeLineStyle: LineStyle(
                                  color: _color5,
                                  thickness: 3*fem,
                                ),
                                endChild: Padding(
                                  padding: EdgeInsets.fromLTRB(15*fem,0,0,0),
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: _color6,
                                            borderRadius: BorderRadius.circular(50*fem)
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(10*fem),
                                          child: Icon(MyFlutterApp.vector_3_,
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
                                                text: 'QR Code\n',
                                                style: SafeGoogleFont(
                                                  'Helvetica',
                                                  fontSize: 14.5 * ffem,
                                                  fontWeight: FontWeight.bold,
                                                  height: 1.2575 * ffem / fem,
                                                  color: Color(0xff777777),
                                                ),
                                                children: <TextSpan>[
                                                  TextSpan(
                                                      text: 'QR has been placed on the jar',
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
                                  color: _color7,
                                ),
                                isLast: true,
                                beforeLineStyle: LineStyle(
                                  color: _color6,
                                  thickness: 3*fem,
                                ),
                                endChild: Padding(
                                  padding: EdgeInsets.fromLTRB(15*fem,0,0,0),
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: _color7,
                                            borderRadius: BorderRadius.circular(50*fem)
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(10*fem),
                                          child: Icon(MyFlutterApp.group_1502,
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
                                                text: 'Dispached\n',
                                                style: SafeGoogleFont(
                                                  'Helvetica',
                                                  fontSize: 14.5 * ffem,
                                                  fontWeight: FontWeight.bold,
                                                  height: 1.2575 * ffem / fem,
                                                  color: Color(0xff777777),
                                                ),
                                                children: <TextSpan>[
                                                  TextSpan(
                                                      text: 'The material has been dispatched',
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
  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }
}
