import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ujicoba/controller/detailmakanan_controller.dart'; 

class DetailMakananPage extends StatelessWidget {
  final dynamic makanan; 
  final int index;       

  DetailMakananPage({super.key, required this.makanan, required this.index});


  final detailController = Get.put(DetailMakananController());

  @override
  Widget build(BuildContext context) {
    final detail = detailController.listDetailMakanan[index];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Makanan"),
        backgroundColor: Colors.orange.shade700,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              detail.gambarMakanan, 
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  width: double.infinity,
                  height: 250,
                  color: Colors.grey.shade200,
                  child: const Icon(Icons.fastfood, color: Colors.grey, size: 50),
                );
              },
            ),
            
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        makanan.namaMakanan,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        makanan.hargaMakanan,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange.shade800,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.amber, size: 24),
                      const SizedBox(width: 6),
                      Text(
                        detail.ratingMakanan,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    "Deskripsi",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    detail.deskripsiMakanan,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.shade800,
                      height: 1.5, 
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}