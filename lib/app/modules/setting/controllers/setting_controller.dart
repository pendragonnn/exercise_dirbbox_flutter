import 'package:get/get.dart';

class SettingController extends GetxController {
  //TODO: Implement SettingController
  RxBool isSyncSwitched = false.obs;
  RxBool isVerSwitched = false.obs;

  void switchedSync(bool value) {
    isSyncSwitched.toggle();
  }

  void switchedVer(bool value) {
    isVerSwitched.toggle();
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
