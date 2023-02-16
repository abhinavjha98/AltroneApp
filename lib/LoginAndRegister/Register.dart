import 'package:flutter/material.dart';

class RegistrationWidget extends StatefulWidget {
  @override
  _RegistrationWidgetState createState() => _RegistrationWidgetState();
}

class _RegistrationWidgetState extends State<RegistrationWidget> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator RegistrationWidget - FRAME

    return Container(
        width: 390,
        height: 844,
        decoration: BoxDecoration(
          color: Color.fromRGBO(250, 251, 254, 1),
        ),
        child: Stack(children: <Widget>[
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                  width: 390,
                  height: 844,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(251, 250, 255, 1),
                  ))),
          Positioned(
              top: 632,
              left: 132.25,
              child: Container(
                  width: 123.5,
                  height: 20,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 53.75,
                        child: Text(
                          'Or',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromRGBO(130, 130, 130, 1),
                              fontFamily: 'Inter',
                              fontSize: 14,
                              letterSpacing: -0.5,
                              fontWeight: FontWeight.normal,
                              height: 1.4285714285714286),
                        )),
                    Positioned(
                        top: 10,
                        left: 78.5,
                        child: Divider(
                            color: Color.fromRGBO(154, 157, 162, 1),
                            thickness: 1)),
                    Positioned(
                        top: 10,
                        left: 0,
                        child: Divider(
                            color: Color.fromRGBO(154, 157, 162, 1),
                            thickness: 1)),
                  ]))),
          Positioned(
              top: 672.375,
              left: 97,
              child: Container(
                  width: 89,
                  height: 34,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 89,
                            height: 34,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                              color: Color.fromRGBO(217, 217, 217, 1),
                              border: Border.all(
                                color: Color.fromRGBO(24, 119, 242, 1),
                                width: 1,
                              ),
                            ))),
                    Positioned(top: 8, left: 7, child: null),
                    Positioned(
                        top: 9,
                        left: 29,
                        child: Text(
                          'facebook',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Inter',
                              fontSize: 12,
                              letterSpacing: -0.5,
                              fontWeight: FontWeight.normal,
                              height: 1.3333333333333333),
                        )),
                  ]))),
          Positioned(
              top: 672.375,
              left: 202,
              child: Container(
                  width: 89,
                  height: 34,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 89,
                            height: 34,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                              color: Color.fromRGBO(217, 217, 217, 1),
                              border: Border.all(
                                color: Color.fromRGBO(24, 119, 242, 1),
                                width: 1,
                              ),
                            ))),
                    Positioned(
                        top: 9,
                        left: 37,
                        child: Text(
                          'Google',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Inter',
                              fontSize: 12,
                              letterSpacing: -0.5,
                              fontWeight: FontWeight.normal,
                              height: 1.3333333333333333),
                        )),
                    Positioned(top: 8, left: 13, child: null),
                  ]))),
          Positioned(
              top: 488.25,
              left: 20,
              child: Container(
                  width: 233.25,
                  height: 15,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 22.25,
                        child: Text(
                          'I accept terms of use & private policy',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(130, 130, 130, 1),
                              fontFamily: 'Inter',
                              fontSize: 12,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 14,
                            height: 14,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(2),
                                topRight: Radius.circular(2),
                                bottomLeft: Radius.circular(2),
                                bottomRight: Radius.circular(2),
                              ),
                              color: Color.fromRGBO(255, 255, 255, 1),
                              border: Border.all(
                                color: Color.fromRGBO(154, 157, 162, 1),
                                width: 1,
                              ),
                            ))),
                  ]))),
          Positioned(
              top: 739.125,
              left: 88,
              child: Text(
                'Already have an account? Login',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(37, 37, 37, 1),
                    fontFamily: 'Inter',
                    fontSize: 14,
                    letterSpacing: 0,
                    fontWeight: FontWeight.normal,
                    height: 1.4285714285714286),
              )),
          // Positioned(top: 0, left: 0, child: null),
          Positioned(
              top: 821,
              left: 120,
              child: Container(
                  width: 150,
                  height: 8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(90),
                      topRight: Radius.circular(90),
                      bottomLeft: Radius.circular(90),
                      bottomRight: Radius.circular(90),
                    ),
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ))),
          Positioned(
              top: 300,
              left: 20,
              child: Container(
                  width: 350,
                  height: 76,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Text(
                          'Email',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(37, 37, 37, 1),
                              fontFamily: 'Inter',
                              fontSize: 14,
                              letterSpacing: -0.5,
                              fontWeight: FontWeight.normal,
                              height: 1.4285714285714286),
                        )),
                    Positioned(
                        top: 26,
                        left: 0,
                        child: Container(
                            width: 350,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                              color: Color.fromRGBO(255, 255, 255, 1),
                              border: Border.all(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                width: 1,
                              ),
                            ))),
                    Positioned(
                        top: 43.5,
                        left: 47.36376953125,
                        child: Text(
                          'Enter your email',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(130, 130, 130, 1),
                              fontFamily: 'Inter',
                              fontSize: 12,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    // Positioned(
                    //     top: 44.4951171875,
                    //     left: 15,
                    //     child: Container(
                    //         width: 13.92387580871582,
                    //         height: 13,
                    //         child: Stack(children: <Widget>[
                    //           Positioned(top: 0, left: 0, child: null),
                    //         ]))),
                  ]))),
          Positioned(
              top: 207,
              left: 20,
              child: Container(
                  width: 350,
                  height: 76,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Text(
                          'User name',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(37, 37, 37, 1),
                              fontFamily: 'Inter',
                              fontSize: 14,
                              letterSpacing: -0.5,
                              fontWeight: FontWeight.normal,
                              height: 1.4285714285714286),
                        )),
                    Positioned(
                        top: 26,
                        left: 0,
                        child: Container(
                            width: 350,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                              color: Color.fromRGBO(255, 255, 255, 1),
                              border: Border.all(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                width: 1,
                              ),
                            ))),
                    // Positioned(top: 42, left: 15, child: null),
                    Positioned(
                        top: 43.5,
                        left: 47.36376953125,
                        child: Text(
                          'Enter User name',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(130, 130, 130, 1),
                              fontFamily: 'Inter',
                              fontSize: 12,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                  ]))),
          Positioned(
              top: 393,
              left: 20,
              child: Container(
                  width: 350,
                  height: 76,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 350,
                            height: 76,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Text(
                                    'Password',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(37, 37, 37, 1),
                                        fontFamily: 'Inter',
                                        fontSize: 14,
                                        letterSpacing: -0.5,
                                        fontWeight: FontWeight.normal,
                                        height: 1.4285714285714286),
                                  )),
                              Positioned(
                                  top: 26,
                                  left: 0,
                                  child: Container(
                                      width: 350,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15),
                                          bottomLeft: Radius.circular(15),
                                          bottomRight: Radius.circular(15),
                                        ),
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        border: Border.all(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                          width: 1,
                                        ),
                                      ))),
                              Positioned(
                                  top: 45.9755859375,
                                  left: 47.36376953125,
                                  child: Text(
                                    '********',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(130, 130, 130, 1),
                                        fontFamily: 'Inter',
                                        fontSize: 12,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                  )),
                            ]))),
                    // Positioned(
                    //     top: 43.974609375,
                    //     left: 17.5009765625,
                    //     child: Container(
                    //         width: 9.997820854187012,
                    //         height: 14.000811576843262,
                    //         child: Stack(children: <Widget>[
                    //           Positioned(top: 0, left: 0, child: null),
                    //         ]))),
                    // Positioned(
                    //     top: 45.9755859375,
                    //     left: 322.5263671875,
                    //     child: Container(
                    //         width: 14,
                    //         height: 15,
                    //         child: Stack(children: <Widget>[
                    //           Positioned(top: 0, left: 0, child: null),
                    //         ]))),
                  ]))),
          Positioned(
              top: 523,
              left: 37.5,
              child: Container(
                  width: 315,
                  height: 48,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 315,
                            height: 48,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50),
                                bottomLeft: Radius.circular(50),
                                bottomRight: Radius.circular(50),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(
                                        0, 0, 0, 0.07999999821186066),
                                    offset: Offset(0, 15),
                                    blurRadius: 25)
                              ],
                              color: Color.fromRGBO(24, 119, 242, 1),
                            ))),
                    Positioned(
                        top: 14,
                        left: 22,
                        child: Text(
                          'Register',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Inter',
                              fontSize: 14,
                              letterSpacing: -0.5,
                              fontWeight: FontWeight.normal,
                              height: 1.4285714285714286),
                        )),
                  ]))),
          Positioned(
              top: 168,
              left: 126,
              child: Text(
                'Registration',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: 'Inter',
                    fontSize: 24,
                    letterSpacing: 0,
                    fontWeight: FontWeight.normal,
                    height: 0.8333333333333334),
              )),
        ]));
  }
}
