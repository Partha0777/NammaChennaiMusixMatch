

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:namma_chennai/Utility/Constants.dart';

class OnBoardController extends GetxController{

  Rx<int> page = 1.obs;

  @override
  void onInit() {
    super.onInit();
  }

  void moveNextPage(){
    if(page.value + 1 != 4){
      page.value = page.value + 1;
    }else{
      page.value = 3;
      askMicPermission();
    }
    update();
  }

  void movePreviousPage(){
    page.value = page.value - 1 != 0 ? page.value - 1 : 1;
    update();
  }

  askMicPermission(){
    Get.bottomSheet(
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60,vertical: 60),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/images/enable_microphone.png", width: 100,height: 100,),
                SizedBox(height: 20),
                Text("Activate Microphone", style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
                SizedBox(height: 20),
                Text("To continue you must activate you mircophone on your device!", style: const TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold),textAlign: TextAlign.center),
                SizedBox(height: 40),
                ElevatedButton(onPressed: (){}, child: const Text("Enable MicroPhone", style: TextStyle(color: Colors.black),)),
                SizedBox(height: 12),
              ],
            ),
          ),
        ),
      backgroundColor: Constants.appBgcolor
    );
  }


}