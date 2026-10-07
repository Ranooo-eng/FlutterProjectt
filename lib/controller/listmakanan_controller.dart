import 'package:ujicoba/models/makanan_model.dart';
import 'package:get/get.dart';
class ListMakananController extends GetxController {
  
  //kita buat data datanya
  List<MakananModel> listMakanan = [
    MakananModel(
      namaMakanan: "Soto Ayam", 
      hargaMakanan: "10.000",
 ),
    MakananModel(
     namaMakanan: "Lentog",
     hargaMakanan: "15.000",
  ),
    MakananModel(
      namaMakanan: "Pindang Kerbau",
      hargaMakanan: "15.000",
   ),
    MakananModel(
      namaMakanan: "Bakso",
      hargaMakanan: "20.000",
   ),
    MakananModel(
      namaMakanan: "Ayam Geprek",
      hargaMakanan: "18.000",
   ),
  ];
}