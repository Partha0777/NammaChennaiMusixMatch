import 'package:get/get.dart';
import 'package:namma_chennai/onboard_page/onboard_page.dart';

class LaunchScreenController {
  void navigateToOnboardingPage() {
    Future.delayed(Duration(seconds: 2)).then((onValue) {
      Get.off(() => OnBoardPage());
    });
  }
}
