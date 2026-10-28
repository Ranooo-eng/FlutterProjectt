import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ujicoba/controller/mainmenu_controller.dart';
import 'package:ujicoba/pages/menuDrawer_page.dart';

class MainmenuPage extends StatelessWidget {
  MainmenuPage({super.key});

  final MainMenucontroller = Get.put(MainMenuController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: const Text('Main Menu'),
        ),

        body: IndexedStack(
          index: MainMenucontroller.selectedIndex.value,
          children: MainMenucontroller.listpages,
        ),

        drawer: menuDrawerPage(),

        bottomNavigationBar: BottomNavigationBar(
          onTap: MainMenucontroller.changePage,
          currentIndex: MainMenucontroller.selectedIndex.value,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history_outlined),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}