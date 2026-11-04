import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:http/http.dart' as http;
import 'package:ujicoba/pages/mainmenu_page.dart';

class LogincloneController extends GetxController {

  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  var isLoading = false.obs;

  Future<void> login() async {
  if (txtUsername.text.toString().isEmpty || txtPassword.text.toString().isEmpty) {
    Get.snackbar("error", "username dan password harus terisi");
  } else {
    try {
      isLoading.value = true;
      final url = Uri.parse("https://mediadwi.com/api/latihan/login");

      final response = await http.post(url, body: {
        "username": txtUsername.text.toString(),
        "password": txtPassword.text.toString()
      });

      isLoading.value = false;
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        if (data['status'] == true) {
          Get.snackbar("berhasil", data['message']);
          Get.off(() => MainmenuPage());
        } else {
          Get.snackbar("gagal", data['message']);
        }
      } else {
        Get.snackbar("gagal", "Cek internet connection");
      }
    } catch (e) {
      Get.snackbar("gagal", e.toString());
    }
  }
}
}