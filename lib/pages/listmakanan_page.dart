import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ujicoba/controller/listmakanan_controller.dart';
import 'package:ujicoba/routes.dart'; 

class ListMakananPage extends StatelessWidget {
  ListMakananPage({super.key});

  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Makanan"),
        backgroundColor: Colors.orange.shade700,
        foregroundColor: Colors.white,
      ),
      body: Obx(
        () => ListView.builder(
          padding: const EdgeInsets.all(12),
          itemCount: controller.listMakanan.length,
          itemBuilder: (context, index) {
            final makanan = controller.listMakanan[index];
            return Card(
              margin: const EdgeInsets.only(bottom: 12),
              child: ListTile(
                title: Text(
                  makanan.namaMakanan,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Rp ${makanan.hargaMakanan}"),
                onTap: () => Get.toNamed(Routes.detailMakanan, arguments: makanan),
              ),
            );
          },
        ),
      ),
    );
  }
}