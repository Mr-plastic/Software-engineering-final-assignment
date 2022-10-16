import 'package:best_flutter_ui_templates/app_theme.dart';
import 'package:flutter/material.dart';
import 'navigation_home_screen.dart';

class thankScreen extends StatefulWidget {
  @override
  _thankScreenState createState() => _thankScreenState();
}

class _thankScreenState extends State<thankScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isLightMode = brightness == Brightness.light;
    return Container(
      color: isLightMode ? AppTheme.nearlyWhite : AppTheme.nearlyBlack,
      child: SafeArea(
        top: false,
        child: Scaffold(
          backgroundColor:
              isLightMode ? AppTheme.nearlyWhite : AppTheme.nearlyBlack,
          body: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.3,
                ),
                child: Image.asset('assets/images/thank.png'),
              ),
              Container(
                child: Text(
                  'Your reply has been received',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: isLightMode ? Colors.black : Colors.white),
                ),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NavigationHomeScreen()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      color: Colors.blue),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'return to homepage',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: isLightMode ? Colors.white : Colors.black,
                        ),
                      ),
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
