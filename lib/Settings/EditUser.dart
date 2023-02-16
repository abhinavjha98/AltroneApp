import 'package:custom_switch/custom_switch.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:mydrive/AddFeature/CreateFolder.dart';
import 'package:mydrive/Helper/CustomColors.dart';
import 'package:mydrive/Helper/CustomLeadingIcon.dart';
import 'package:mydrive/LoginAndRegister/RegisterNew.dart';
import 'package:mydrive/LoginAndRegister/ResetPassword.dart';
import 'package:mydrive/ProfileFeature/ProfileScreen.dart';
import 'package:mydrive/Settings/settings.dart';

class EditUserNew extends StatefulWidget {
  const EditUserNew({Key key}) : super(key: key);

  @override
  State<EditUserNew> createState() => _EditUserNewState();
}

class _EditUserNewState extends State<EditUserNew> {
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
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Color.fromRGBO(245, 245, 245, 1),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "    User Info",
                          style: GoogleFonts.lato(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: width * 0.06),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProfileScreen()));
                          },
                          icon: Icon(Icons.edit),
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CreateFolder()));
                      },
                      icon: Icon(Icons.cancel),
                    ),
                  ],
                ),
              ),

              TextFormField(
                controller: _firstnamecontroller,
                style: TextStyle(color: Colors.black),
                validator: (value) {
                  if (value.trim().isEmpty) {
                    return "First Name is required";
                  }
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "First Name: Add your Name",
                  hintStyle: TextStyle(color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(width * 0.04),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2,
                      // style: borderStyle,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(width * 0.04),
                    borderSide: BorderSide(width: 2, color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(width * 0.04),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2,
                      // style: borderStyle,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _lastnamecontroller,
                style: TextStyle(color: Colors.black),
                validator: (value) {
                  if (value.trim().isEmpty) {
                    return "Last Name is required";
                  }
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Last Name: Add your Name",
                  hintStyle: TextStyle(color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(width * 0.04),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2,
                      // style: borderStyle,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(width * 0.04),
                    borderSide: BorderSide(width: 2, color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(width * 0.04),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2,
                      // style: borderStyle,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              DateTimeField(
                controller: _dobcontroller,
                validator: (value) {
                  if (value == null) {
                    return "dob is required";
                  }
                },
                style: TextStyle(
                  color: Colors.black,
                ),
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Select Date",
                  labelText: "DOB: Add DOB",
                  labelStyle: TextStyle(color: Colors.black),
                  hintStyle: TextStyle(color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(width * 0.04),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2,
                      // style: borderStyle,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(width * 0.04),
                    borderSide: BorderSide(width: 2, color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(width * 0.04),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2,
                      // style: borderStyle,
                    ),
                  ),
                ),
                format: DateFormat("dd-MM-yyyy"),
                onShowPicker: (context, currentValue) async {
                  final date = await showDatePicker(
                    context: context,
                    firstDate: DateTime(1900),
                    initialDate: currentValue ?? DateTime.now(),
                    lastDate: DateTime(2100),
                    builder: (context, child) {
                      return Theme(
                        data: ThemeData.dark().copyWith(
                            colorScheme: ColorScheme.light(
                              primary: CustomColors().mygreencolorshade600,
                              onPrimary: Colors.white,
                              surface: CustomColors().mygreencolorshade600,
                            ),
                            dialogBackgroundColor: Colors.white),
                        child: child,
                      );
                    },
                  );
                  if (date != null) {
                    return date;
                  } else {
                    return currentValue;
                  }
                },
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
