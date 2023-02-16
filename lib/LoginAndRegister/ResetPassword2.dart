import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mydrive/Helper/CustomColors.dart';
import 'package:mydrive/LoginAndRegister/OTPScreen.dart';
import 'package:mydrive/LoginAndRegister/RegisterNew.dart';
import 'package:mydrive/ProfileFeature/Settings.dart';
import 'package:mydrive/Settings/settings.dart';

class ResetPassword2 extends StatefulWidget {
  const ResetPassword2({Key key}) : super(key: key);

  @override
  State<ResetPassword2> createState() => _ResetPassword2State();
}

class _ResetPassword2State extends State<ResetPassword2> {
  bool _ishidden = true;
  bool _isLoading = false;
  bool checkedValue = false;
  TextEditingController _userController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Color.fromRGBO(245, 245, 245, 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 80,
            ),
            Center(
              child: Text(
                "Reset Password",
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                LabelWidget(
                  text:
                      "Don't worry! It happens. Please enter the address \n associated with your account.",
                  fontWeight: FontWeight.normal,
                ),
              ],
            ),
            LabelWidget(
              text: 'New Password',
              fontWeight: null,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 8, 8),
              child: TextFormField(
                controller: _passwordController,
                obscureText: _ishidden ? true : false,
                validator: (value) {
                  if (value.trim().isEmpty) {
                    return "Password is required";
                  }
                },
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintStyle: TextStyle(color: Colors.black),
                  hintText: "New Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(width * 0.04),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2,
                      // style: borderStyle,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(width * 0.04),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2,
                      // style: borderStyle,
                    ),
                  ),
                  prefixIcon: Image.asset('assets/Vector-1.png'),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _ishidden = !_ishidden;
                      });
                    },
                    child: Icon(
                      _ishidden ? Icons.visibility_off : Icons.visibility,
                      color: CustomColors().mygreencolorshade600,
                    ),
                  ),
                ),
              ),
            ),
            LabelWidget(
              text: 'Confirm Password',
              fontWeight: null,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 8, 8),
              child: TextFormField(
                controller: _passwordController,
                obscureText: _ishidden ? true : false,
                validator: (value) {
                  if (value.trim().isEmpty) {
                    return "Password is required";
                  }
                },
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintStyle: TextStyle(color: Colors.black),
                  hintText: "Confirm New Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(width * 0.04),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2,
                      // style: borderStyle,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(width * 0.04),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2,
                      // style: borderStyle,
                    ),
                  ),
                  prefixIcon: Image.asset('assets/Vector-1.png'),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _ishidden = !_ishidden;
                      });
                    },
                    child: Icon(
                      _ishidden ? Icons.visibility_off : Icons.visibility,
                      color: CustomColors().mygreencolorshade600,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 48,
                  width: 315,
                  child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) =>
                            _buildPopupDialog(context),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('SUBMIT'),
                        Icon(
                          Icons.arrow_forward_sharp,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(24, 119, 242, 1),
                      shape: StadiumBorder(),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildPopupDialog(BuildContext context) {
  return new AlertDialog(
    content: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset('assets/Group 8509.png'),
        ),
        LabelWidget(
            text: "Password Reset Successfully",
            fontWeight: FontWeight.bold,
            fontSize: 16),
        SizedBox(height: 10),
        LabelWidget(
            text: "Your password has been successfully reset.",
            fontSize: 12,
            fontWeight: null),
        ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SettingsNew()));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Login'),
            ],
          ),
          style: ElevatedButton.styleFrom(
            primary: Color.fromRGBO(24, 119, 242, 1),
            shape: StadiumBorder(),
          ),
        ),
      ],
    ),
    // actions: <Widget>[
    //   new ElevatedButton(
    //     onPressed: () {
    //       Navigator.of(context).pop();
    //     },
    //     // c: Theme.of(context).primaryColor,
    //     child: const Text('Login'),
    //   ),
    // ],
  );
}

class LabelWidget extends StatelessWidget {
  const LabelWidget({
    @required String text,
    @required FontWeight fontWeight,
    @required double fontSize,
    Key key,
  })  : _text = text,
        _fontWeight = fontWeight,
        _fontSize = fontSize,
        super(key: key);

  final String _text;
  final FontWeight _fontWeight;
  final double _fontSize;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 8, 8),
          child: Text(
            _text,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromRGBO(37, 37, 37, 1),
                fontFamily: 'Inter',
                fontSize: _fontSize,
                letterSpacing: -0.5,
                fontWeight: _fontWeight,
                height: 1.4285714285714286),
          ),
        ),
      ],
    );
  }
}

class TextField extends StatelessWidget {
  const TextField({
    Key key,
    @required TextEditingController userController,
    @required this.width,
    @required String hintText,
  })  : _userController = userController,
        _hintText = hintText,
        super(key: key);

  final TextEditingController _userController;
  final String _hintText;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 8, 8),
      child: TextFormField(
        controller: _userController,
        style: TextStyle(
          color: Colors.black,
        ),
        keyboardType: TextInputType.emailAddress,
        // ignore: missing_return
        validator: (value) {
          if (value.trim().isEmpty) {
            return "Email Address is required";
          }
        },
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: _hintText,
          hintStyle: TextStyle(color: Colors.black),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(width * 0.04),
            borderSide: BorderSide(
              color: Colors.white,
              width: 2,
              // style: borderStyle,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(width * 0.04),
            borderSide: BorderSide(
              color: Colors.white,
              width: 2,
              // style: borderStyle,
            ),
          ),
          prefixIcon: Image.asset(
            'assets/Vector-2.png',
          ),
        ),
      ),
    );
  }
}
