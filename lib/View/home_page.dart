import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Utility/Constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Utility/Constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Constants.appBgcolor,
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            backgroundColor: Constants.appBgcolor,
            largeTitle: const Text(
              'Home',
              style: TextStyle(color: Colors.white),
            ),
            trailing: const Icon(Icons.settings, color: Colors.white),
          ),
          Column(
            children: [
              Container(
                color: Colors.green,
              )
            ],
          )
        ],
      ),
    );
  }
}




