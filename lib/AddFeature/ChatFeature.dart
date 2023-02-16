import 'package:custom_switch/custom_switch.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:mydrive/Helper/CustomColors.dart';
import 'package:mydrive/Helper/CustomLeadingIcon.dart';
import 'package:mydrive/LoginAndRegister/RegisterNew.dart';
import 'package:mydrive/LoginAndRegister/ResetPassword.dart';
import 'package:mydrive/ProfileFeature/ProfileScreen.dart';
import 'package:mydrive/Settings/settings.dart';

class ChatDetails extends StatefulWidget {
  const ChatDetails({Key key}) : super(key: key);

  @override
  State<ChatDetails> createState() => _ChatDetailsState();
}

class _ChatDetailsState extends State<ChatDetails> {
  TextEditingController _msgcontroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _ishidden = true;
  bool _isLoading = false;
  bool checkedValue = false;
  TextEditingController _firstnamecontroller = TextEditingController();
  TextEditingController _lastnamecontroller = TextEditingController();
  TextEditingController _dobcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("abhinav@gmail.com"),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: GestureDetector(
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => SharedAllPhotos()));
              },
              child: Center(
                child: Container(
                  margin: EdgeInsets.only(right: 5),
                  child: Text("All Photos"),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Color.fromRGBO(245, 245, 245, 1),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                alignment: Alignment.centerRight,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                      color: Colors.blue.shade100),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "Hello",
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        "16:09",
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 9, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 10,
              ),
              Form(
                key: _formKey,
                child: Card(
                  elevation: 10,
                  child: TextFormField(
                    controller: _msgcontroller,
                    style: TextStyle(color: Colors.black),
                    validator: (value) {
                      if (value.trim().isEmpty) {
                        return "Message is required";
                      }
                    },
                    decoration: InputDecoration(
                      hintText: "Say Something",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(width * 0.01),
                        borderSide: BorderSide(
                          color: CustomColors().mygreencolorshade600,
                          width: 2,
                          // style: borderStyle,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(width * 0.01),
                        borderSide: BorderSide(
                          color: CustomColors().mygreencolorshade600,
                          width: 2,
                          // style: borderStyle,
                        ),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () async {
                          if (_formKey.currentState.validate()) {
                            _formKey.currentState.save();
                            // if all are valid then go to success screen
                            // KeyboardUtil.hideKeyboard(context);

                          }
                        },
                        icon: Icon(
                          Icons.send,
                          color: CustomColors().mygreencolorshade600,
                        ),
                      ),
                      /*   prefixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add_a_photo,
                        color: CustomColors().mygreencolorshade600,
                      ),
                    ),*/
                    ),
                  ),
                ),
              ),
              // GestureDetector(
              //   onTap: () async {
              //     final storage = new FlutterSecureStorage();
              //     await storage
              //         .write(key: "LoginStatus", value: "false")
              //         .then((value) {
              //       storage.write(key: "PasscodeStatus", value: "false");
              //       Navigator.pushReplacement(
              //         context,
              //         MaterialPageRoute(
              //             builder: (context) => LoginScreen()),
              //       );
              //     });
              //   },
              //   child: Card(
              //     elevation: 10,
              //     child: ListTile(
              //       leading: CustomLeadingIcon().customLeadingIcon(
              //           icon: Icons.logout, width: width),
              //       title: Text(
              //         "Logout",
              //         style:
              //             GoogleFonts.lato(fontWeight: FontWeight.bold),
              //       ),
              //     ),
              //   ),
            ],
          ),
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
          padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
          child: Text(
            _text,
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Color.fromRGBO(37, 37, 37, 1),
                fontFamily: 'Inter',
                fontSize: 18,
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
