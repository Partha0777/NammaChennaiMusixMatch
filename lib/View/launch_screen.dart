import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({super.key});

  @override
  State<StatefulWidget> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen>{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        color: Colors.blue,
      ),
    );
  }

}