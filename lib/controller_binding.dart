// the purpose of controller binding is to implement getx
import 'package:get/get.dart';
import 'package:httptest/controllers/controller.dart';

class ControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<Controller>(Controller());
  }
}
