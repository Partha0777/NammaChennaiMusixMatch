import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LaunchScreen(),
    );
  }
}

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({super.key});

  @override
  State<StatefulWidget> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

}
