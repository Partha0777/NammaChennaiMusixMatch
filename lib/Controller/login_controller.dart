import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:namma_chennai/View/connect_music_page.dart';

import '../onboard_page/onboard_page.dart';

class LoginController {

  void navigateToConnectMusicPage() {
      Get.off(() => ConnectMusicPage());
  }
}