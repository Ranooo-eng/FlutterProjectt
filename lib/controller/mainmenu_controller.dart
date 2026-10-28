import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:ujicoba/menu/home.dart';
import 'package:ujicoba/menu/history.dart';
import 'package:ujicoba/menu/profile.dart';

class MainMenuController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  void changePage(int index) {
    selectedIndex.value = index;
  }

  List<Widget> listPages = [HomePage(), HistoryPage(), ProfilePage()];
}
