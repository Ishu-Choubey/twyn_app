import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:twyn_app/utils.dart';
import 'order-page.dart';
import 'track-page.dart';
import 'login.dart';
import 'package:twyn_app/functions/firebaseFunction.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:twyn_app/main.dart';

class trackid extends StatefulWidget {
  @override
  State<trackid> createState() => _trackidState();
}

class _trackidState extends State<trackid> {
  int errorname=0;
  bool show=false;
  int initialLabelIndex = 0;
  String allID='';
  final docId=TextEditingController();
  // getalltrackID() async
  // {
  //   QuerySnapshot querySnapshot = await FirebaseFirestore.instance.collection('users').doc('${docid}').collection("orders").get();
  //   for (int i = 0; i < querySnapshot.docs.length; i++) {
  //     var a = querySnapshot.docs[i];
  //     print(a.id);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 450;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed:  ()=> {Navigator.of(context).push(MaterialPageRoute(builder: (context)=> MyApp())),},
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
                        0 * fem, 0 * fem, 0 * fem, 50 * fem),
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
                  ToggleSwitch(
                    minWidth: 150.0*fem,
                    cornerRadius: 20.0*fem,
                    activeBgColors: [[Color(0xff4D1354)!], [Color(0xff4D1354)!]],
                    activeFgColor: Colors.white,
                    inactiveBgColor: Color(0xffb43f67),
                    inactiveFgColor: Colors.white,
                    initialLabelIndex: initialLabelIndex,
                    totalSwitches: 2,
                    labels: ['Track Order', 'Previous Orders'],
                    customTextStyles: [
                      SafeGoogleFont(
                        'Helvetica',
                        fontSize: 16 * ffem,
                        fontWeight: FontWeight.w800,
                        height: 1.2575 * ffem / fem,
                        color: Color(0xfff6f4f4),
                      ),
                      SafeGoogleFont(
                        'Helvetica',
                        fontSize: 16 * ffem,
                        fontWeight: FontWeight.w800,
                        height: 1.2575 * ffem / fem,
                        color: Color(0xfff6f4f4),
                      ),
                    ],
                    radiusStyle: true,
                    onToggle: (index) {
                      setState(
                              (){
                            initialLabelIndex = index!;
                          });
                    },
                  ),
                  initialLabelIndex==0? Column(
                    children: [
                  Container(
                    // autogroupdwrniWA (Xp2uW5Bq3bTJBt4wBzDwrn)
                    margin: EdgeInsets.fromLTRB(
                        45 * fem, 95 * fem, 45 * fem, 35 * fem),
                    padding: EdgeInsets.fromLTRB(
                        30 * fem, 55 * fem, 30 * fem, 55 * fem),
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
                            // order id enter
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 30 * fem),
                            constraints: BoxConstraints(
                              maxWidth: 265 * fem,
                            ),
                            child: Text(
                              'Enter Your Order ID',
                              style: SafeGoogleFont(
                                'Helvetica',
                                fontSize: 18 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.2575 * ffem / fem,
                                color: Color(0xff7c7979),
                              ),
                            ),
                          ), //enter container
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                15 * fem, 0 * fem, 8 * fem, 7 * fem),
                            width: double.infinity,
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
                              child: TextFormField(
                                controller: docId,
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.fromLTRB(
                                      15.0, 5.0, 5.0, 10.0),
                                  fillColor: Color(0xffF6F6F6),
                                  filled: true,
                                  hintText: "Eg. 4Ij2K6ptbeYQf7C5P1Pf",
                                  hintStyle: TextStyle(
                                      color: Color(0xffa7a7a7)),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(
                                        500 * fem),
                                  ),
                                  disabledBorder: InputBorder.none,
                                ),
                                style: SafeGoogleFont(
                                  'Helvetica',
                                  fontSize: 17 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.25 * ffem / fem,
                                  color: Color(0xff545252),
                                ),
                              ),
                            ),
                          ), //text box
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                25 * fem, 0 * fem, 0 * fem, 17 * fem),
                            width: double.infinity,
                            child: Text(
                              'Please Enter A Valid Tracking ID',
                              style: SafeGoogleFont(
                                'Helvetica',
                                fontSize: errorname * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.25 * ffem / fem,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ]
                    ),
                  ),
                  Container(
                    // trackLrJ (18:31)
                    margin: EdgeInsets.fromLTRB(
                        155 * fem, 0 * fem, 155 * fem, 0 * fem),
                    child: TextButton(
                      onPressed: () async {
                        if (docId.text!.isNotEmpty){
                          errorname=0;
                          DocumentSnapshot ds;
                          DocumentReference docref= await FirebaseFirestore.instance.collection('users').doc('${docid}');
                          CollectionReference collRef =docref.collection('orders');
                          collRef.doc(docId.text)
                          .get()
                          .then((value) {
                            if(value.exists) {
                              errorname=0;
                              ds = value;
                              Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          Track(
                                              name_: ds['name'],
                                              color_: ds['color'],
                                              quantity_: ds['quantity'])
                                  )
                              );
                            }
                            else
                              {
                                setState(() {
                                  errorname=12;
                                });
                              }
                          } // then
                          );//collref closed
                        }//if closed
                        else
                        {
                          setState(() {
                            errorname=12;
                          });
                        }
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(
                            0 * fem, 13 * fem, 0 * fem, 13 * fem),
                        width: double.infinity,
                        height: 65 * fem,
                        child: Container(
                          // frame11FiN (I18:31;440:2040)
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xff4e1455),
                            borderRadius: BorderRadius.circular(30 * fem),
                          ),
                          child: Center(
                            child: Center(
                              child: Text(
                                'TRACK',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont(
                                  'Helvetica',
                                  fontSize: 16 * ffem,
                                  fontWeight: FontWeight.w800,
                                  height: 1.2575 * ffem / fem,
                                  color: Color(0xfff6f4f4),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ), //track button
                  ])
                  :Container(
                    // autogroupdwrniWA (Xp2uW5Bq3bTJBt4wBzDwrn)
                    margin: EdgeInsets.fromLTRB(
                        45 * fem, 95 * fem, 45 * fem, 35 * fem),
                    padding: EdgeInsets.fromLTRB(
                        30 * fem, 55 * fem, 30 * fem, 55 * fem),
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
                            // order id enter
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 20 * fem),
                            constraints: BoxConstraints(
                              maxWidth: 265 * fem,
                            ),
                            child: TextButton(
                              onPressed: () async {
                                if(allID=='') {
                                  QuerySnapshot querySnapshot = await FirebaseFirestore
                                      .instance.collection('users').doc(
                                      '${docid}').collection("orders").get();
                                  for (int i = 0; i <
                                      querySnapshot.docs.length; i++) {
                                    var a = querySnapshot.docs[i];
                                    setState(() {
                                      allID = '\n' + a.id + allID;
                                    });
                                  }
                                }
                              },
                              child: Text(
                                "Previous Order's Track IDs",
                                style: SafeGoogleFont(
                                  'Helvetica',
                                  fontSize: 18 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2575 * ffem / fem,
                                  color: Color(0xff7c7979),
                                ),
                              ),
                            ),
                          ), //enter container
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                15 * fem, 0 * fem, 8 * fem, 7 * fem),
                            width: double.infinity,
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Color(0xffF6F6F6),
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
                                padding: EdgeInsets.fromLTRB(8.0*fem, 0*fem,8*fem,20*fem),
                                child: SelectableText(
                                  textAlign: TextAlign.center,
                                  '${allID}',
                                  style: SafeGoogleFont(
                                    'Helvetica',
                                    fontSize: 17 * ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.25 * ffem / fem,
                                    color: Color(0xff545252),
                                  ),
                                ),
                              ),
                            ),
                          ), //text box
                        ]
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
