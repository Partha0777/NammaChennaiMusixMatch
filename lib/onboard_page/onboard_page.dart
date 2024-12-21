
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnBoardPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xff131313),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 28),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Image.asset("assets/images/logo.png",height: 70,width: 70,),
              pageIndicator(deviceWidth),
              pageIndicator(deviceWidth),
              pageIndicator(deviceWidth),
            ],),
          ),
          OnBoardViewOne()
        ],
      ),
    );
  }

  Widget pageIndicator(double deviceWidth){
    return Container(height: 6,width: deviceWidth/5, decoration: const BoxDecoration(color:  Color(0xffe4e4f0),borderRadius: BorderRadius.all(Radius.circular(20))));
  }
}


class OnBoardViewOne extends StatelessWidget{
  const OnBoardViewOne({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [

      ],
    );
  }
}

class OnBoardViewTwo extends StatelessWidget{
  const OnBoardViewTwo({super.key});


  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [

      ],
    );
  }
}



class OnBoardViewThree extends StatelessWidget{
  const OnBoardViewThree({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [

      ],
    );
  }
}

