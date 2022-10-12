import 'package:best_flutter_ui_templates/home_screen.dart';
import 'package:best_flutter_ui_templates/navigation_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

String regexEmail = "^\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*\$";
String regexPassword = r'^(?=.*?[a-z])(?=.*?[0-9]).{6,30}$';
bool check_email = false;
bool check_password = false;

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
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/backgroundpicture.png"),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'email',
                filled: true,
                fillColor: Colors.white,
              ),
              validator: (value) {
                print('pass_1');
                if (value!.isEmpty) {
                  return '不能為空';
                }
                check_email = RegExp(regexEmail).hasMatch(value);
                if (!check_email) {
                  return '信箱不符合格式';
                }
                return null;
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            TextFormField(
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
                filled: true,
                fillColor: Colors.white,
              ),
              validator: (value) {
                print('pass_2');
                if (value!.isEmpty) {
                  return '不能為空';
                }
                check_password = RegExp(regexPassword).hasMatch(value);
                if (!check_password) {
                  return '密碼不符合格式';
                }
                print('pass_2');
                return null;
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            ElevatedButton(
              onPressed: () {
                if (check_email & check_password) {
                  print('Login pressed ...');
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NavigationHomeScreen()));
                }
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
