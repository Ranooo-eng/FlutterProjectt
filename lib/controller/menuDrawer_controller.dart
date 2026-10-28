import 'package:get/get.dart';
import 'package:ujicoba/controller/mainmenu_controller.dart';

class MenuDrawerController extends GetxController {
  final MenuDrawerController mainController =
      Get.find<MenuDrawerController>();

  void changePage(int index) {
    mainController.changePage(index);
  }
}