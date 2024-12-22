import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:namma_chennai/Controller/onboard_controller.dart';
import 'package:namma_chennai/Utility/Constants.dart';

const String onBoardViewOneBodyOne =
    "Join Namma \nChennai music and \nenjoy the chennai sounds";
const String onBoardViewOneBodyTwo = "Namma ooru Namm Gethu 💪🏻";

const String onBoardViewTwoBodyOne =
    "Love music & \nMake an impact on how people listen to music";
const String onBoardViewTwoBodyTwo = "Makkale! listen namma music";

const String onBoardViewThreeBodyOne = "Let's Play \nthe namma chennai songs";
const String onBoardViewThreeBodyTwo =
    "Enga ooruu madrassu inga nanga thane addressuu";

class OnBoardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Constants.appBgcolor,
      body: GetBuilder(
          init: OnBoardController(),
          builder: (controller) {
            return GestureDetector(
              onTapDown: (details) {
                final dx = details.localPosition.dx;
                final width = context.size!.width;

                if (dx < width / 2) {
                  controller.movePreviousPage();
                } else {
                  controller.moveNextPage();
                }
              },
              child: Obx(
                () => Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 28),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            "assets/images/logo.png",
                            height: 70,
                            width: 70,
                          ),
                          pageIndicator(
                              deviceWidth, controller.page.value == 1),
                          pageIndicator(
                              deviceWidth, controller.page.value == 2),
                          pageIndicator(
                              deviceWidth, controller.page.value == 3),
                        ],
                      ),
                    ),
                    if (controller.page.value == 1) ...{
                      OnBoardView(onBoardViewOneBodyOne, onBoardViewOneBodyTwo,
                          "chennai_image_5.png")
                    } else if (controller.page.value == 2) ...{
                      OnBoardView(onBoardViewTwoBodyOne, onBoardViewTwoBodyTwo,
                          "chennai_image_6.png")
                    } else if (controller.page.value == 3) ...{
                      OnBoardView(onBoardViewThreeBodyOne,
                          onBoardViewThreeBodyTwo, "chennai_image_7.png")
                    }
                  ],
                ),
              ),
            );
          }),
    );
  }

  Widget pageIndicator(double deviceWidth, bool currentPage) {
    return Container(
        height: 4,
        width: deviceWidth / 5,
        decoration: BoxDecoration(
            color: currentPage == true ? Color(0xffe4e4f0) : Color(0x3de4e4f0),
            borderRadius: BorderRadius.all(Radius.circular(20))));
  }
}

class OnBoardView extends StatelessWidget {
  final String body1;
  final String body2;
  final String image;

  OnBoardView(this.body1, this.body2, this.image);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                body1,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Text(
                body2,
                style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        SizedBox(height: 30),
        Image.asset("assets/images/$image")
      ],
    );
  }

  Widget gridItem(double deviceWidth, String image) {
    return SizedBox(
      height: 150,
      child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
          child: Image.asset("assets/images/$image")),
    );
  }
}

class OnBoardViewTwo extends StatelessWidget {
  const OnBoardViewTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [],
    );
  }
}

class OnBoardViewThree extends StatelessWidget {
  const OnBoardViewThree({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [],
    );
  }
}
