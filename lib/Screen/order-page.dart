import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:twyn_app/utils.dart';
import 'package:flutter/gestures.dart';
import 'submitted-page.dart';
import 'package:flutter/foundation.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:syncfusion_flutter_core/theme.dart';

const List<String> citylist = <String>['Kolkata', 'New Delhi', 'Bangalore', 'Pune', 'Hyderabad'];


class Order extends StatefulWidget {
  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  bool isExpanded = false ;
  String selectedValue = 'choose your city ' ;
  double value = 100.0;
  @override
  Widget build(BuildContext context) {
    double baseWidth = 450;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: ScrollConfiguration(
        behavior: ScrollBehavior(),
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Container(
              // isubmittedscreenLo8 (18:20)
              width: double.infinity,
              height: isExpanded? 1200*fem: 1090*fem,
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
                                    0 * fem, 30 * fem, 0 * fem, 25 * fem),
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
                            35 * fem, 0 * fem, 35 * fem, 0 * fem),
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
                                  4 * fem, 0 * fem, 4 * fem, 20 * fem),
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
                                        borderRadius:
                                            BorderRadius.circular(33 * fem),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x120000000),
                                            offset: Offset(7 * fem, 6 * fem),
                                            blurRadius: 6 * fem,
                                          ),
                                        ]),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.fromLTRB(
                                            15.0, 5.0, 5.0, 10.0),
                                        fillColor: Color(0xffF6F6F6),
                                        filled: true,
                                        hintText: "Eg. Jon Doe",
                                        hintStyle:
                                            TextStyle(color: Color(0xffa7a7a7)),
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
                                        fontWeight: FontWeight.w400,
                                        height: 1.25 * ffem / fem,
                                        color: Color(0xff545252),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),//Name Container
                            Container( //Product colour box
                              margin: EdgeInsets.fromLTRB(
                                  4 * fem, 0 * fem, 4 * fem, 20 * fem),
                              width: double.infinity,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // nameo4A (77:283)
                                      margin: EdgeInsets.fromLTRB(
                                          5 * fem, 0 * fem, 0 * fem, 17 * fem),
                                      child: Text(
                                        'Product Colour:',
                                        style: SafeGoogleFont(
                                          'Helvetica',
                                          fontSize: 19 * ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.2575 * ffem / fem,
                                          color: Color(0xffbc4772),
                                        ),
                                      ),
                                    ),
                                    Container(          //colour box
                                      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                      padding: EdgeInsets.fromLTRB(30 * fem, 40 * fem, 30 * fem, 40 * fem),
                                      width: double.infinity,
                                      height: 70*fem,
                                      decoration: BoxDecoration(
                                        color: Color(0xfff6f6f6),
                                        borderRadius: BorderRadius.circular(33 * fem),
                                        boxShadow: [BoxShadow(
                                            color: Color(0x26000000),
                                            offset: Offset(7 * fem, 6 * fem),
                                            blurRadius: 6 * fem,
                                          ),
                                        ],
                                      ),
                                      child:
                                      Container(
                                        // colouroptionsmim (1:70)
                                        width:  double.infinity,
                                        height:  double.infinity,
                                        child:
                                        Row(
                                          crossAxisAlignment:  CrossAxisAlignment.center,
                                          children:  [
                                            Container(
                                              // frameredWRT (I1:70;407:2216)
                                              margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 27*fem, 0*fem),
                                              child:
                                              TextButton(
                                                onPressed:  () {},
                                                style:  TextButton.styleFrom (
                                                  padding:  EdgeInsets.zero,
                                                ),
                                                child:
                                                Container(
                                                  width:  72*fem,
                                                  height:  double.infinity,
                                                  child:
                                                  Container(
                                                    // frame128u (I1:70;407:2216;407:2179)
                                                    width:  double.infinity,
                                                    height:  double.infinity,
                                                    child:
                                                    Row(
                                                      crossAxisAlignment:  CrossAxisAlignment.end,
                                                      children:  [
                                                        Container(
                                                          // autogroupmtwfmMP (EtTbuLFL19bXh2VgqAMtwf)
                                                          margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 9*fem, 0*fem),
                                                          child:
                                                            Container(
                                                              width:  34*fem,
                                                              height:  33*fem,
                                                              child:  Align(
                                                                child: SizedBox(
                                                                  width: 33 * fem,
                                                                  height: 33 * fem,
                                                                  child: Image.asset(
                                                                    'images/l2.png',
                                                                    fit: BoxFit.cover,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                        ),
                                                        Container(
                                                          // autogroup92nyEVs (EtTc1QuXieWN1AW1Dt92ny)
                                                          width:  29*fem,
                                                          height:  27*fem,
                                                          child:
                                                          Stack(
                                                            children:  [
                                                              Positioned(
                                                                // reda3w (I1:70;407:2216;407:2182)
                                                                left:  0*fem,
                                                                top:  10*fem,
                                                                child:
                                                                Align(
                                                                  child:
                                                                  SizedBox(
                                                                    width:  21*fem,
                                                                    height:  17*fem,
                                                                    child:
                                                                    Text(
                                                                      'RED',
                                                                      style:  SafeGoogleFont (
                                                                        'Helvetica',
                                                                        fontSize:  13*ffem,
                                                                        fontWeight:  FontWeight.w400,
                                                                        height:  1.2575*ffem/fem,
                                                                        color:  Color(0xffa7a7a7),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Positioned(
                                                                // ea4c4cD6u (I1:70;407:2216;407:2183)
                                                                left:  3*fem,
                                                                top:  0*fem,
                                                                child:
                                                                Align(
                                                                  child:
                                                                  SizedBox(
                                                                    width:  26*fem,
                                                                    height:  11*fem,
                                                                    child:
                                                                    Text(
                                                                      'EA4C4C',
                                                                      textAlign:  TextAlign.center,
                                                                      style:  SafeGoogleFont (
                                                                        'Helvetica',
                                                                        fontSize:  8*ffem,
                                                                        fontWeight:  FontWeight.w400,
                                                                        height:  1.2575*ffem/fem,
                                                                        color:  Color(0xffa7a7a7),
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
                                            Container(
                                              // framepinkVq7 (I1:70;407:2217)
                                              margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 17*fem, 0*fem),
                                              child:
                                              TextButton(
                                                onPressed:  () {},
                                                style:  TextButton.styleFrom (
                                                  padding:  EdgeInsets.zero,
                                                ),
                                                child:
                                                Container(
                                                  width:  72*fem,
                                                  height:  double.infinity,
                                                  child:
                                                  Container(
                                                    // frame1RCy (I1:70;407:2217;407:2185)
                                                    width:  double.infinity,
                                                    height:  double.infinity,
                                                    child:
                                                    Row(
                                                      crossAxisAlignment:  CrossAxisAlignment.end,
                                                      children:  [
                                                        Container(
                                                          // autogroupvjehBC9 (EtTcDzNuZwQSbWEmd3VJEh)
                                                          margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 9*fem, 0*fem),
                                                          child:
                                                          TextButton(
                                                            onPressed:  () {},
                                                            style:  TextButton.styleFrom (
                                                              padding:  EdgeInsets.zero,
                                                            ),
                                                            child:
                                                            Container(
                                                              width:  34*fem,
                                                              height:  33*fem,
                                                              child:  Align(
                                                                child: SizedBox(
                                                                  width: 33 * fem,
                                                                  height: 33 * fem,
                                                                  child: Image.asset(
                                                                    'images/l2.png',
                                                                    fit: BoxFit.cover,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          // autogroupmeztUS9 (EtTcJeuoTdrfpdB3KWmeZT)
                                                          width:  29*fem,
                                                          height:  27*fem,
                                                          child:
                                                          Stack(
                                                            children:  [
                                                              Positioned(
                                                                // pinkDPj (I1:70;407:2217;407:2188)
                                                                left:  0*fem,
                                                                top:  10*fem,
                                                                child:
                                                                Align(
                                                                  child:
                                                                  SizedBox(
                                                                    width:  25*fem,
                                                                    height:  17*fem,
                                                                    child:
                                                                    Text(
                                                                      'PINK',
                                                                      style:  SafeGoogleFont (
                                                                        'Helvetica',
                                                                        fontSize:  13*ffem,
                                                                        fontWeight:  FontWeight.w400,
                                                                        height:  1.2575*ffem/fem,
                                                                        color:  Color(0xffa7a7a7),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Positioned(
                                                                // ea4c89irH (I1:70;407:2217;407:2189)
                                                                left:  3*fem,
                                                                top:  0*fem,
                                                                child:
                                                                Align(
                                                                  child:
                                                                  SizedBox(
                                                                    width:  26*fem,
                                                                    height:  11*fem,
                                                                    child:
                                                                    Text(
                                                                      'EA4C89',
                                                                      textAlign:  TextAlign.center,
                                                                      style:  SafeGoogleFont (
                                                                        'Helvetica',
                                                                        fontSize:  8*ffem,
                                                                        fontWeight:  FontWeight.w400,
                                                                        height:  1.2575*ffem/fem,
                                                                        color:  Color(0xf7a8a8a8),
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
                                            TextButton(
                                              // frameyellow26H (I1:70;407:2218)
                                              onPressed:  () {},
                                              style:  TextButton.styleFrom (
                                                padding:  EdgeInsets.zero,
                                              ),
                                              child:
                                              Container(
                                                width:  79*fem,
                                                height:  double.infinity,
                                                child:
                                                Container(
                                                  // frame1AiH (I1:70;407:2218;407:2191)
                                                  width:  double.infinity,
                                                  height:  double.infinity,
                                                  child:
                                                  Row(
                                                    crossAxisAlignment:  CrossAxisAlignment.end,
                                                    children:  [
                                                      Container(
                                                        // autogroupeipdvxM (EtTcWZjd3FqHffMCLKeipD)
                                                        margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 9*fem, 0*fem),
                                                        child:
                                                        TextButton(
                                                          onPressed:  () {},
                                                          style:  TextButton.styleFrom (
                                                            padding:  EdgeInsets.zero,
                                                          ),
                                                          child:
                                                          Container(
                                                            child:  Align(
                                                              child: SizedBox(
                                                                width: 33 * fem,
                                                                height: 33 * fem,
                                                                child: Image.asset(
                                                                  'images/l2.png',
                                                                  fit: BoxFit.cover,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        // autogroupqgkwR8R (EtTcbtv5CdCye5r5R9QGKw)
                                                        width:  36*fem,
                                                        height:  27*fem,
                                                        child:
                                                        Stack(
                                                          children:  [
                                                            Positioned(
                                                              // yellowAbo (I1:70;407:2218;407:2194)
                                                              left:  0*fem,
                                                              top:  10*fem,
                                                              child:
                                                              Align(
                                                                child:
                                                                SizedBox(
                                                                  width:  36*fem,
                                                                  height:  17*fem,
                                                                  child:
                                                                  Text(
                                                                    'YELLOW',
                                                                    style:  SafeGoogleFont (
                                                                      'Helvetica',
                                                                      fontSize:  13*ffem,
                                                                      fontWeight:  FontWeight.w400,
                                                                      height:  1.2575*ffem/fem,
                                                                      color:  Color(0xffa7a7a7),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Positioned(
                                                              // ffcc5cG93 (I1:70;407:2218;407:2195)
                                                              left:  3*fem,
                                                              top:  0*fem,
                                                              child:
                                                              Align(
                                                                child:
                                                                SizedBox(
                                                                  width:  26*fem,
                                                                  height:  11*fem,
                                                                  child:
                                                                  Text(
                                                                    'FFCC5C',
                                                                    textAlign:  TextAlign.center,
                                                                    style:  SafeGoogleFont (
                                                                      'Helvetica',
                                                                      fontSize:  8*ffem,
                                                                      fontWeight:  FontWeight.w400,
                                                                      height:  1.2575*ffem/fem,
                                                                      color:  Color(0xf7a8a8a8),
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
                                          ],
                                        ),
                                      ),
                                    )
                                  ]),
                            ),//Product Container
                            Container(
                                margin: EdgeInsets.fromLTRB(
                                    4 * fem, 0 * fem, 4 * fem, 20 * fem),
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // nameo4A (77:283)
                                      margin: EdgeInsets.fromLTRB(
                                          5 * fem, 0 * fem, 0 * fem, 17 * fem),
                                      child: Text(
                                        'Product Quantity:',
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
                                      height: 130*fem,
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
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(24, 20,24, 5),
                                            child: Text(
                                              'Choose the quantity required(in gms):',
                                              textAlign: TextAlign.center,
                                              style: SafeGoogleFont(
                                                'Helvetica',
                                                fontSize: 14.5 * ffem,
                                                fontWeight: FontWeight.w500,
                                                height: 1.2575 * ffem / fem,
                                                color: Color(0xffA8A8A8),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(10, 0,10, 0),
                                            child: SfSliderTheme(
                                              data: SfSliderThemeData(
                                                activeLabelStyle: TextStyle(color: Color(0xffA8A8A8), fontSize: 11, fontWeight: FontWeight.w700),
                                                inactiveLabelStyle: TextStyle(color: Color(0xffA8A8A8), fontSize: 11, fontWeight: FontWeight.w500),
                                              ),
                                              child: SfSlider(
                                                min: 100,
                                                max: 500,
                                                value: value,
                                                interval: 100,
                                                activeColor: Color(0xffBC4772),
                                                inactiveColor: Color(0xffE9E2E2),
                                                showTicks: true,
                                                showLabels: true,
                                                enableTooltip: true,
                                                //showDividers: true,
                                                //minorTicksPerInterval: 1,
                                                onChanged: (value) => setState(()=>this.value = value),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),

                                    ),
                                  ],
                                ),
                            ),//Slider Container
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                4 * fem, 0 * fem, 4 * fem, 10 * fem),
                              width: double.infinity,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // nameo4A (77:283)
                                      margin: EdgeInsets.fromLTRB(
                                          5 * fem, 0 * fem, 0 * fem, 17 * fem),
                                      child: Text(
                                        'Delivery City:',
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
                                      margin: EdgeInsets.fromLTRB(
                                          5 * fem, 0 * fem, 0 * fem, 0 * fem),
                                      width: double.infinity,
                                      height: 100*fem,
                                        child: Padding(
                                          padding: EdgeInsets.fromLTRB(3 * fem, 0 * fem, 0 * fem, 5 * fem),
                                          child: Column(
                                            children: [
                                              SizedBox(height: 5,),
                                              Container(
                                                width: double.infinity,
                                                height: 50*fem,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                    BorderRadius.circular(33*fem),
                                                    color: Color(0xfffafafa),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Color(0x120000000),
                                                        offset: Offset(7 * fem, 6 * fem),
                                                        blurRadius: 6 * fem,
                                                      ),
                                                    ]),
                                                child: Center(
                                                  child: Padding(
                                                    padding: const EdgeInsets.symmetric(horizontal: 15),
                                                    child: InkWell(
                                                        onTap: (){
                                                          FocusScope.of(context).unfocus();
                                                          isExpanded = !isExpanded;
                                                          setState(() {

                                                          });
                                                        },
                                                        child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children: [
                                                            Expanded(child: Text(selectedValue, textAlign: TextAlign.center, style: SafeGoogleFont('Helvetica',
                                                              fontSize: 14.5 * ffem, fontWeight: FontWeight.w500, height: 1.2575 * ffem / fem, color: Color(0xffA8A8A8),
                                                            ),
                                                            ),
                                                            ),
                                                            Icon( isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down ,
                                                              color: isExpanded  ? Colors.red : Colors.blue,
                                                            )
                                                          ],
                                                        )),
                                                  ),
                                                ),
                                              ),
                                              if(isExpanded)
                                                ListView(
                                                  shrinkWrap: true,
                                                  physics: ScrollPhysics(),
                                                  children: citylist.map((e) =>
                                                      InkWell(
                                                        onTap: (){
                                                          isExpanded = false ;
                                                          selectedValue = e ;
                                                          setState(() {

                                                          });
                                                        },
                                                        child: Container(
                                                            height: 30,
                                                            width: double.infinity,
                                                            decoration: BoxDecoration(
                                                              color: selectedValue == e ? Colors.pink: Color(0xffFBFBFB),
                                                              boxShadow: [
                                                                BoxShadow(
                                                                  color: Color(0x120000000),
                                                                  offset: Offset(7*fem, 6*fem),
                                                                  blurRadius: 6*fem,
                                                                )
                                                              ]
                                                            ),
                                                            child: Center(child: Text(e.toString() ,textAlign: TextAlign.center, style: SafeGoogleFont('Helvetica',
                                                              fontSize: 14.5 * ffem, fontWeight: selectedValue == e  ? FontWeight.w700 :FontWeight.w500,
                                                                height: 1.2575 * ffem / fem,
                                                                color: Color(0xff151515)
                                                              ) ,
                                                            )
                                                            )
                                                        ),
                                                      )
                                                  ).toList(),
                                                )
                                            ],
                                          ),
                                      ),
                                    ),
                                  ]
                               ),
                            ),//Delivery Container
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
                                      60 * fem, 0 * fem, 60 * fem, 13 * fem),
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
                            ),//Submit Container
                          ],
                        ),
                      ),
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
