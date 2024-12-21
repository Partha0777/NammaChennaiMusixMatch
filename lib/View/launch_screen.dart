import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:namma_chennai/Controller/launch_screen_controller.dart';
import 'package:namma_chennai/Utility/Constants.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({super.key});

  @override
  State<StatefulWidget> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen>{

   LaunchScreenController launchController = LaunchScreenController();

  @override
  void initState() {

    super.initState();
    launchController.navigateToOnboardingPage();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Constants.appBgcolor,
        child: Center(
          child: Image.asset("assets/images/logo.png",
          height: 100,
            width: 100,
          ),
        ),
      ),
    );
  }

}
