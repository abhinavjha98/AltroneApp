import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mydrive/Helper/CustomColors.dart';
import 'package:mydrive/LoginAndRegister/RegisterNew.dart';
import 'package:mydrive/LoginAndRegister/ResetPassword.dart';

class LoginNew extends StatefulWidget {
  const LoginNew({Key key}) : super(key: key);

  @override
  State<LoginNew> createState() => _LoginNewState();
}

class _LoginNewState extends State<LoginNew> {
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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Login",
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 24,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            LabelWidget(
              text: 'Email',
            ),
            TextField(
                userController: _userController,
                width: width,
                hintText: 'Enter your email'),
            LabelWidget(
              text: 'Password',
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
                  hintText: "Enter Password",
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
                    'assets/Vector-1.png',
                  ),
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
            CheckboxListTile(
              title: Text("I accept terms of use & private policy"),
              value: checkedValue,
              onChanged: (newValue) {
                setState(() {
                  checkedValue = newValue;
                });
              },
              controlAffinity:
                  ListTileControlAffinity.leading, //  <-- leading Checkbox
            ),
            SizedBox(
              height: 48,
              width: 315,
              child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Login'),
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
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ResetPassword()));
                  },
                  child: LabelWidget(
                    text: 'Forgot Your Password ?',
                  ),
                ),
              ],
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8 / 2, 20, 8, 8),
                    child: Text(
                      '----------- Or ----------',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color.fromRGBO(37, 37, 37, 1),
                          fontFamily: 'Inter',
                          fontSize: 14,
                          letterSpacing: -0.5,
                          fontWeight: FontWeight.normal,
                          height: 1.4285714285714286),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 39,
                  width: 109,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/Facebook.png',
                        ),
                        Text(
                          'Facebook',
                          style: TextStyle(color: Colors.black, fontSize: 10),
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(255, 255, 255, 1),
                      shape: StadiumBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  height: 39,
                  width: 109,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/Google.png',
                        ),
                        Text(
                          'Google',
                          style: TextStyle(color: Colors.black, fontSize: 10),
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(255, 255, 255, 1),
                      shape: StadiumBorder(),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(text: "Don't have account? "),
                      // TextSpan(
                      //     text: 'Terms of Service',
                      //     recognizer: TapGestureRecognizer()
                      //       ..onTap = () {
                      //         print('Terms of Service"');
                      //       }),
                      // TextSpan(text: ' and that you have read our '),
                      TextSpan(
                          style: TextStyle(color: Colors.blue),
                          text: 'Register',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RegisterNew()));
                            }),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LabelWidget extends StatelessWidget {
  const LabelWidget({
    @required String text,
    Key key,
  })  : _text = text,
        super(key: key);

  final String _text;

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
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Color.fromRGBO(37, 37, 37, 1),
                fontFamily: 'Inter',
                fontSize: 14,
                letterSpacing: -0.5,
                fontWeight: FontWeight.normal,
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
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
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
