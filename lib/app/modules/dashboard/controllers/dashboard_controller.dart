import 'package:get/get.dart';

class DashboardController extends GetxController {
  //TODO: Implement DashboardController
  var token = "".obs;
  final count = 0.obs;
  @override
  void onInit() {
    var data = Get.arguments;
    if (data != null) token.value = (data['access_token']);
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
