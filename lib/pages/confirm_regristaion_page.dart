import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:ujicoba/controller/confirmregristaion_controller.dart';

class ConfirmRegistration extends StatelessWidget {
  ConfirmRegistration({super.key});

  final controller = Get.put(ConfirmRegistrationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Confirm Registration")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Nama: ${controller.name}",
              style: const TextStyle(fontSize: 25, color: Colors.red),
            ),
            const SizedBox(height: 12),
            Text(
              "Jenis Kelamin: ${controller.jenisKelamin}",
              style: const TextStyle(fontSize: 25, color: Colors.red),
            ),
            const SizedBox(height: 12),
            Text(
              "Alamat: ${controller.alamat}",
              style: const TextStyle(fontSize: 25, color: Colors.red),
            ),
            const SizedBox(height: 12),
            Text(
              "Email: ${controller.email}",
              style: const TextStyle(fontSize: 25, color: Colors.red),
            ),
            const SizedBox(height: 12),
            Text(
              "No HP: ${controller.noHp}",
              style: const TextStyle(fontSize: 25, color: Colors.red),
            ),
            
            const SizedBox(height: 32),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text("Oke"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}