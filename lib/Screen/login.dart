import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:twyn_app/utils.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
            width:  double.infinity,
            height:  double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.center,
                colors: [Color(0xFFE15766), Color(0xFF541655)],
              ),
            ),
        child: Stack(
          children:  [Positioned( // lineelement2GLd (1:40)
          left: 0,
          top: -50,
          child:
          Align(
            child:
            SizedBox(
              /*width: 500,
              height:  200,*/
              child: Image.asset('images/l1.png', fit:  BoxFit.cover,),
            ),
          ),
        ),
            Positioned( //For Bottom vector
              left:  0,
              bottom: -70,
              child:
              Align(
                child:
                SizedBox(
                  child: Image.asset('images/l2.png', fit:  BoxFit.cover,),
                ),
              ),
            ),
            Positioned( //For Bottom vector
              left:  55,
              bottom: 475,
              child:
              Align(
                child:
                Center(
                  child: SizedBox(
                    child: Image.asset('images/twynw.png',  width: 295, height: 138, fit:  BoxFit.cover,),
                  ),
                ),
              ),
            ),
            Positioned(
              left:  57,
              bottom: 455,
              child:
              Align(
                child:
                SizedBox(
                  width:  295,
                  height:  43,
                  child:
                  Text('Immersive, AI-powered Digital Twins for Smart Factories',
                    textAlign:  TextAlign.center,
                    style: GoogleFonts.sourceSansPro (fontSize:  16, fontWeight:  FontWeight.w700, height:  1.2575, color:  Color(0xffFFFFFF),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left:  94,
              top:  490,
              child:
              TextButton(
                onPressed:  () {},
                style:  TextButton.styleFrom (
                  padding:  EdgeInsets.zero,
                ),
                child:
                Container(
                  padding:  EdgeInsets.fromLTRB(10, 10, 10, 10),
                  width:  239,
                  height:  75,
                  child:
                  Container(
// frame97ty (I1:32;440:2013)
                    width:  double.infinity,
                    height:  double.infinity,
                    decoration:  BoxDecoration (
                      color:  Color(0xb212091e),
                      borderRadius:  BorderRadius.circular(30),
                    ),
                    child:
                    Center(
                      child:
                      Center(
                        child:
                        Text(
                          'PLACE A NEW ORDER',
                          textAlign:  TextAlign.center,
                          style:  GoogleFonts.sourceSansPro (
                            fontSize:  16,
                            fontWeight:  FontWeight.w700,
                            height:  1.2575,
                            color:  Color(0xc4f9beec),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
// trackR8y (1:33)
              left:  94,
              top:  560,
              child:
              TextButton(
                onPressed:  () {},
                style:  TextButton.styleFrom (
                  padding:  EdgeInsets.zero,
                ),
                child:
                Container(
                  padding:  EdgeInsets.fromLTRB(10, 10, 10, 10),
                  width:  241,
                  height:  75,
                  child:
                  Container(
// frame11itm (I1:33;440:2022)
                    width:  double.infinity,
                    height:  double.infinity,
                    decoration:  BoxDecoration (
                      color:  Color(0xb212091e),
                      borderRadius:  BorderRadius.circular(30),
                    ),
                    child:
                    Center(
                      child:
                      Center(
                        child:
                        Text(
                          'TRACK YOUR ORDER',
                          textAlign:  TextAlign.center,
                          style:  GoogleFonts.sourceSansPro (
                            fontSize:  16,
                            fontWeight:  FontWeight.w700,
                            height:  1.2575,
                            color:  Color(0xc4f9beec),
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
    );
  }
}

