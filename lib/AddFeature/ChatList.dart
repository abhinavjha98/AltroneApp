import 'package:custom_switch/custom_switch.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:mydrive/AddFeature/ShowFilesFolder.dart';
import 'package:mydrive/Helper/CustomColors.dart';
import 'package:mydrive/Helper/CustomLeadingIcon.dart';
import 'package:mydrive/LoginAndRegister/RegisterNew.dart';
import 'package:mydrive/LoginAndRegister/ResetPassword.dart';
import 'package:mydrive/ProfileFeature/ProfileScreen.dart';
import 'package:mydrive/Settings/settings.dart';

class ChatList extends StatefulWidget {
  const ChatList({Key key}) : super(key: key);

  @override
  State<ChatList> createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  int _bottomnavigatorbarindex = 3;
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
          icon: Icon(Icons.person, color: Colors.grey),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("LOGO HERE"),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: GestureDetector(
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => SharedAllPhotos()));
              },
              child: IconButton(
                icon: Icon(Icons.search, color: Colors.grey),
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ShowFilesFolder())),
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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  //  margin: EdgeInsets.symmetric(vertical: width * 0.1),
                  child: Text(
                    "Shared",
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: width * 0.06),
                    ),
                  ),
                ),
              ),

              ListView.builder(
                // padding: EdgeInsets.only(left: 20, right: 20),
                shrinkWrap: true,

                physics: NeverScrollableScrollPhysics(),
                itemCount: 7,
                itemBuilder: (buildContext, index) {
                  return Card(
                    elevation: 10,
                    child: ListTile(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) =>
                        //             SharedChatScreen(
                        //                 userlist[index].email,
                        //                 userlist[index].token)));
                      },
                      leading: CustomLeadingIcon()
                          .customLeadingIcon(icon: Icons.person, width: width),
                      title: Text(
                        "abcd@gmail.com",
                        style: GoogleFonts.lato(fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(Icons.cancel),
                    ),
                  );
                },
              )
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
      bottomNavigationBar: FFNavigationBar(
        theme: FFNavigationBarTheme(
          barBackgroundColor: Theme.of(context).primaryColor,
          selectedItemBorderColor: Colors.blue.shade100,
          selectedItemBackgroundColor: Colors.blue.shade600,
          selectedItemIconColor: Colors.white,
          selectedItemLabelColor: Theme.of(context).accentColor,
        ),
        selectedIndex: _bottomnavigatorbarindex,
        onSelectTab: (index) {
          setState(() {
            _bottomnavigatorbarindex = index;
          });
        },
        items: [
          FFNavigationBarItem(
            iconData: Icons.add,
            label: 'Add',
          ),
          FFNavigationBarItem(
            iconData: Icons.library_books,
            label: 'Library',
          ),
          FFNavigationBarItem(
            iconData: Icons.timelapse_rounded,
            label: 'Recent',
          ),
          FFNavigationBarItem(
            iconData: Icons.people,
            label: 'Shared',
          ),
          FFNavigationBarItem(
            iconData: Icons.file_present,
            label: 'Files',
          ),
        ],
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