import 'package:get/get.dart';
import 'package:helloworld/presentation/controllers/Main_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainController>(() => MainController());
  }
}
