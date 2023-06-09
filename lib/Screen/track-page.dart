import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:twyn_app/utils.dart';
import 'package:flutter/gestures.dart';
import 'package:timelines/timelines.dart';
import 'package:tuple/tuple.dart';
import 'package:enhance_stepper/enhance_stepper.dart';
import 'package:cupertino_stepper/cupertino_stepper.dart';
import 'package:ddlog/ddlog.dart';

class Track extends StatefulWidget {
  @override
  State<Track> createState() => _TrackState();
}

class _TrackState extends State<Track> {
  @override
  Widget build(BuildContext context) {
    StepperType _type = StepperType.vertical;
    int groupValue = 0;
    int _index = 0;
    List<Tuple2> tuples = [
      Tuple2(
        Icons.directions_bike,
        StepState.indexed,
      ),
      Tuple2(
        Icons.directions_bus,
        StepState.editing,
      ),
      Tuple2(
        Icons.directions_railway,
        StepState.complete,
      ),
      Tuple2(
        Icons.directions_boat,
        StepState.disabled,
      ),
      Tuple2(
        Icons.directions_car,
        StepState.error,
      ),
    ];

    void go(int index) {
      if (index == -1 && _index <= 0) {
        ddlog("it's first Step!");
        return;
      }

      if (index == 1 && _index >= tuples.length - 1) {
        ddlog("it's last Step!");
        return;
      }
      setState(() {
        _index += index;
      });
    }

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
                                )),
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
                            borderRadius: BorderRadius.circular(33 * fem),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x120000000),
                                offset: Offset(7 * fem, 6 * fem),
                                blurRadius: 6 * fem,
                              ),
                            ]),
                        child: Table(
                          columnWidths: {
                            0: FixedColumnWidth(
                                150 * fem), // fixed to 100 width
                          },
                          border: TableBorder.symmetric(
                            outside: BorderSide.none,
                            inside: const BorderSide(
                                width: 1,
                                color: Color(0xffD9D9D9),
                                style: BorderStyle.solid),
                          ),
                          children: [
                            TableRow(children: [
                              TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.fill,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xffF0F0F0),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(33 * fem),
                                    ),
                                  ),
                                  child: Padding(
                                      padding: EdgeInsets.fromLTRB(20 * fem,
                                          11 * fem, 10 * fem, 10 * fem),
                                      child: Center(
                                        child: Text("Customer Name:",
                                            style: SafeGoogleFont(
                                              'Helvetica',
                                              fontSize: 14.5 * ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.2575 * ffem / fem,
                                              color: Color(0xffA8A8A8),
                                            )),
                                      )),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      20 * fem, 10 * fem, 10 * fem, 10 * fem),
                                  child: Text("Yui",
                                      style: SafeGoogleFont(
                                        'Helvetica',
                                        fontSize: 14.5 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.2575 * ffem / fem,
                                        color: Color(0xffA8A8A8),
                                      ))),
                            ]),
                            TableRow(children: [
                              TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.fill,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xffF0F0F0),
                                  ),
                                  child: Padding(
                                      padding: EdgeInsets.fromLTRB(10 * fem,
                                          10 * fem, 10 * fem, 10 * fem),
                                      child: Center(
                                        child: Text("Product Color:",
                                            style: SafeGoogleFont(
                                              'Helvetica',
                                              fontSize: 14.5 * ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.2575 * ffem / fem,
                                              color: Color(0xffA8A8A8),
                                            )),
                                      )),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      20 * fem, 10 * fem, 10 * fem, 10 * fem),
                                  child: Text("Red",
                                      style: SafeGoogleFont(
                                        'Helvetica',
                                        fontSize: 14.5 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.2575 * ffem / fem,
                                        color: Color(0xffA8A8A8),
                                      ))),
                            ]),
                            TableRow(children: [
                              TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.fill,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xffF0F0F0),
                                  ),
                                  child: Padding(
                                      padding: EdgeInsets.fromLTRB(30 * fem,
                                          10 * fem, 10 * fem, 10 * fem),
                                      child: Center(
                                        child: Text("Product Quantity:",
                                            style: SafeGoogleFont(
                                              'Helvetica',
                                              fontSize: 14.5 * ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.2575 * ffem / fem,
                                              color: Color(0xffA8A8A8),
                                            )),
                                      )),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      20 * fem, 10 * fem, 15 * fem, 10 * fem),
                                  child: Text("200gm",
                                      style: SafeGoogleFont(
                                        'Helvetica',
                                        fontSize: 14.5 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.2575 * ffem / fem,
                                        color: Color(0xffA8A8A8),
                                      ))),
                            ]),
                            TableRow(children: [
                              TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.fill,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xffF0F0F0),
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(33 * fem),
                                    ),
                                  ),
                                  child: Padding(
                                      padding: EdgeInsets.fromLTRB(10 * fem,
                                          10 * fem, 10 * fem, 10 * fem),
                                      child: Center(
                                        child: Text("Current Status:",
                                            style: SafeGoogleFont(
                                              'Helvetica',
                                              fontSize: 14.5 * ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.2575 * ffem / fem,
                                              color: Color(0xffA8A8A8),
                                            )),
                                      )),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      20 * fem, 10 * fem, 15 * fem, 10 * fem),
                                  child: Text("Product Is At Dispach Unit",
                                      style: SafeGoogleFont(
                                        'Helvetica',
                                        fontSize: 14.5 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.2575 * ffem / fem,
                                        color: Color(0xffA8A8A8),
                                      ))),
                            ]),
                          ],
                        )),
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
                                )),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          55 * fem, 25 * fem, 55 * fem, 0 * fem),
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
                                    EnhanceStepper(
                                      stepIconSize: 30,
                                      type: _type,
                                      horizontalTitlePosition:
                                          HorizontalTitlePosition.bottom,
                                      horizontalLinePosition:
                                          HorizontalLinePosition.top,
                                      currentStep: _index,
                                      physics: ClampingScrollPhysics(),
                                      steps: tuples
                                          .map((e) => EnhanceStep(
                                                icon: Icon(
                                                  e.item1,
                                                  color: Colors.blue,
                                                  size: 30,
                                                ),
                                                state: StepState
                                                    .values[tuples.indexOf(e)],
                                                isActive:
                                                    _index == tuples.indexOf(e),
                                                title: Text(
                                                    "step ${tuples.indexOf(e)}"),
                                                subtitle: Text(
                                                  "${e.item2.toString().split(".").last}",
                                                ),
                                                content: Text(
                                                    "Step ${tuples.indexOf(e)}"),
                                              ))
                                          .toList(),
                                      onStepCancel: () {
                                        go(-1);
                                      },
                                      onStepContinue: () {
                                        go(1);
                                      },
                                      onStepTapped: (index) {
                                        ddlog(index);
                                        setState(() {
                                          _index = index;
                                        });
                                      },
                                    ),
                                    // bool VoidCallback = void Function();
                                    // VoidCallback? onStepContinue: onStepCancel
                                    // {
                                    // Row(
                                    // children: [
                                    // SizedBox(height: 30,),
                                    // ElevatedButton(
                                    // onPressed: onStepContinue,
                                    // child: Text("Next"),
                                    // ),
                                    // SizedBox(width: 8,),
                                    // TextButton(
                                    // onPressed: onStepCancel,
                                    // child: Text("Back"),
                                    // ),
                                    // ],
                                    // );
                                    // }
                                  ]
                                  ),
                            ),
                          ]),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
