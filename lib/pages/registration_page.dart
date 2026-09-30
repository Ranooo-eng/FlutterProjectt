import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:ujicoba/components/custom_dropdown.dart';
import 'package:ujicoba/components/custom_textfield.dart';
import 'package:ujicoba/routes.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController txtNama = TextEditingController();
    TextEditingController txtJenisKelamin = TextEditingController();
    TextEditingController txtAlamat = TextEditingController();
    TextEditingController txtEmail = TextEditingController();
    TextEditingController txtNoHp = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: Text("Registration Page")),
      body: Column(
        children: [
          CustomTextfield(txtController: txtNama, myHint: "input name"),
          CustomDropdown(controller: txtJenisKelamin, Myhint: "Pilih Jenis Kelamin"),
          CustomTextfield(txtController: txtAlamat, myHint: "input alamat"),
          CustomTextfield(txtController: txtEmail, myHint: "input email"),
          CustomTextfield(txtController: txtNoHp, myHint: "input no hp"),
          ElevatedButton(
            onPressed: () {
              Get.toNamed(
                Routes.confirmRegistration,
                arguments: {
                  'name': txtNama.text.toString(),
                  'jenis_kelamin': txtJenisKelamin.text.toString(),
                  'alamat': txtAlamat.text.toString(),
                  'email': txtEmail.text.toString(),
                  'noHp': txtNoHp.text.toString(),
                },
              );
            },
            child: Text("Send"),
          ),
        ],
      ),
    );
  }
}
