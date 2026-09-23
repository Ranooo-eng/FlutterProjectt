import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../components/custom_textfield.dart';
import '../controller/kalkulator_controller.dart';

class KalkulatorPage extends StatelessWidget {
  KalkulatorPage({super.key});

  final controller = Get.put(KalkulatorController());

  @override
  Widget build(BuildContext context) {
    TextEditingController txtAngka1 = TextEditingController();
    TextEditingController txtAngka2 = TextEditingController();
    
    return Scaffold(
      appBar: AppBar(title: const Text("kalkulator")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomTextfield(txtController: txtAngka1, myHint: "input angka 1"),
            const SizedBox(height: 10), // Memberi sedikit jarak
            CustomTextfield(txtController: txtAngka2, myHint: "input angka 2"),
            const SizedBox(height: 20), // Memberi jarak sebelum tombol
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    int angka1 = int.parse(txtAngka1.text);
                    int angka2 = int.parse(txtAngka2.text);
                    controller.tambah(angka1, angka2);
                  },
                  // Teks disingkat agar tidak terjadi overflow di layar kecil
                  child: const Text("+"), 
                ),
                ElevatedButton(
                  onPressed: () {
                    int angka1 = int.parse(txtAngka1.text);
                    int angka2 = int.parse(txtAngka2.text);
                    controller.kurang(angka1, angka2);
                  },
                  child: const Text("-"),
                ),
                ElevatedButton(
                  onPressed: () {
                    int angka1 = int.parse(txtAngka1.text);
                    int angka2 = int.parse(txtAngka2.text);
                    controller.kali(angka1, angka2);
                  },
                  child: const Text("x"),
                ),
                ElevatedButton(
                  onPressed: () {
                    int angka1 = int.parse(txtAngka1.text);
                    int angka2 = int.parse(txtAngka2.text);
                    controller.bagi(angka1, angka2);
                  },
                  child: const Text("/"),
                ),
                ElevatedButton(onPressed: () {
                  txtAngka1.clear();
                  txtAngka2.clear();
                }, child: const Text("Reset"))
              ],
            ),
            const SizedBox(height: 40),
            Obx(
              () => Text(
                controller.hasil.toString(),
                style: const TextStyle(fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}