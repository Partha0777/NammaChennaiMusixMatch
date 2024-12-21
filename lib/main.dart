import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(GetMaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
    ),
    debugShowCheckedModeBanner: false,
    home: const LaunchScreen(),
  ));
}

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({super.key});

  @override
  State<StatefulWidget> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen>{
  @override
  Widget build(BuildContext context) {

    return SizedBox();
  }

}
