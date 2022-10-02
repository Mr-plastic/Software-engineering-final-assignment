import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginIN extends StatefulWidget {
  const LoginIN({Key? key}) : super(key: key);

  @override
  _LoginIN createState() => _LoginIN();
}

class _LoginIN extends State<LoginIN> {
  TextEditingController? textController1;

  TextEditingController? textController2;

  late bool passwordVisibility;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    passwordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(children: []),
    );
  }
}
