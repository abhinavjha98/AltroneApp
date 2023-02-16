import 'package:custom_switch/custom_switch.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mydrive/Helper/CustomColors.dart';
import 'package:mydrive/Helper/CustomLeadingIcon.dart';
import 'package:mydrive/LoginAndRegister/RegisterNew.dart';
import 'package:mydrive/LoginAndRegister/ResetPassword.dart';
import 'package:mydrive/ProfileFeature/ProfileScreen.dart';
import 'package:mydrive/Settings/Profile.dart';

class SettingsNew extends StatefulWidget {
  const SettingsNew({Key key}) : super(key: key);

  @override
  State<SettingsNew> createState() => _SettingsNewState();
}

class _SettingsNewState extends State<SettingsNew> {
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
                    Text(
                      "    Settings",
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
                                builder: (context) => ProfileNew()));
                      },
                      icon: Icon(Icons.cancel),
                    ),
                  ],
                ),
              ),
              Card(
                elevation: 10,
                child: ListTile(
                  leading: CustomLeadingIcon().customLeadingIcon(
                      icon: Icons.settings_backup_restore, width: width),
                  title: Text(
                    "BackUp and Sync",
                    style: GoogleFonts.lato(),
                  ),
                ),
              ),
              Card(
                elevation: 10,
                child: ListTile(
                  leading: CustomLeadingIcon().customLeadingIcon(
                      icon: Icons.nightlight_round, width: width),
                  trailing: CustomSwitch(
                    activeColor: Colors.blueAccent,
                    value: true,
                    // value: themeChange.darkTheme,
                    // onChanged: (value) {
                    //   setState(() {
                    //     themeChange.darkTheme = value;
                    //   });
                    // },
                  ),
                  title: Text(
                    "Dark Mode",
                    style: GoogleFonts.lato(),
                  ),
                ),
              ),
              Card(
                elevation: 10,
                child: ListTile(
                  leading: CustomLeadingIcon().customLeadingIcon(
                      icon: Icons.notifications, width: width),
                  title: Text(
                    "Notifications",
                    style: GoogleFonts.lato(),
                  ),
                ),
              ),
              Card(
                elevation: 10,
                child: ListTile(
                  leading: CustomLeadingIcon()
                      .customLeadingIcon(icon: Icons.group, width: width),
                  title: Text(
                    "Memories",
                    style: GoogleFonts.lato(),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => PasscodeScreen()));
                },
                child: Card(
                  elevation: 10,
                  child: ListTile(
                    leading: CustomLeadingIcon()
                        .customLeadingIcon(icon: Icons.code, width: width),
                    title: Text(
                      "Set Passcode",
                      style: GoogleFonts.lato(),
                    ),
                  ),
                ),
              ),
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
