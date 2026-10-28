import 'package:get/get.dart';
import 'package:ujicoba/controller/mainmenu_controller.dart';

class menuDrawerController extends GetxController {
  final MainMenuController mainController =
      Get.find<MainMenuController>();

  void changePage(int index) {
    mainController.changePage(index);
  }
}