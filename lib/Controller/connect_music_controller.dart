import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:namma_chennai/View/home_page.dart';

import '../onboard_page/onboard_page.dart';

class LaunchScreenController  {

  void navigateToHomeScreen() {
    Get.off(() => HomePage());
  }
}