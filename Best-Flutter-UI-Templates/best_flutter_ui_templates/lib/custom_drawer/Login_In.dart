import 'package:best_flutter_ui_templates/home_screen.dart';
import 'package:best_flutter_ui_templates/navigation_home_screen.dart';
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'email',
            ),
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              print('Login pressed ...');
              Navigator.push(context, MaterialPageRoute(builder: (context) => NavigationHomeScreen()));
            },
            child: Text('Login'),
          ),
        ],
      ),
    );
  }
}
