import 'dart:async';
import 'dart:math';
//import 'package:MedBuzz/ui/views/Home.dart';
import 'package:MedBuzz/core/auth/auth_service.dart';
import 'package:MedBuzz/core/constants/route_names.dart';
import 'package:MedBuzz/core/database/user_db.dart';
import 'package:MedBuzz/ui/darkmode/dark_mode_model.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:provider/provider.dart';

import '../../core/constants/route_names.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {
  void open() async {
    await Hive.openBox('onboarding');
  }

  Auth authenticateSession = Auth();

  @override
  void initState() {
    super.initState();
    Provider.of<DarkModeModel>(context, listen: false).setAppTheme();
    Provider.of<UserCrud>(context, listen: false).getuser();
    startTimer();
  }

  void checkAuthentication() async {
    try {
      if (await authenticateSession.isBiometricAvailable() == true &&
          await authenticateSession.authSession() == false) {
        Navigator.pushNamed(context, RouteNames.authenticationFailed);
      } else if (await authenticateSession.isBiometricAvailable() == false) {
        box.get('status') == 'true'
            ? Navigator.pushReplacementNamed(context, RouteNames.homePage)
            : Navigator.pushReplacementNamed(context, RouteNames.onboarding);
      } else if (await authenticateSession.isBiometricAvailable() == true &&
          await authenticateSession.authSession() == true) {
        box.get('status') == 'true'
            ? Navigator.pushReplacementNamed(context, RouteNames.homePage)
            : Navigator.pushReplacementNamed(context, RouteNames.onboarding);
      }
    } catch (e) {
      print(e);
    }
  }

  startTimer() async {
    var duration = Duration(seconds: 3);

    return new Timer(duration, () {
      checkAuthentication();
    });
  }

  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }
  // route() {
  //   Navigator.pushReplacementNamed(context, RouteNames.onboarding);
  // }

  var box = Hive.box('onboarding');

  initScreen(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.asset('images/MedBuzz.png'),
            ),
          ],
        ),
      ),
    );
  }
}
