import 'package:ujicoba/models/makanan_model.dart';
import 'package:get/get.dart';
class ListMakananController extends GetxController {
  
  List<MakananModel> listMakanan = [
    MakananModel(
      namaMakanan: "Soto Ayam", 
      hargaMakanan: "10.000",
      gambarMakanan: "https://www.dapurkobe.co.id/wp-content/uploads/soto-ayam.jpg",
      ratingMakanan: "4.5",
      deskripsiMakanan: "Soto ayam adalah hidangan khas Indonesia yang terbuat dari ayam yang dimasak dalam kuah kaldu yang kaya rempah."
 ),
    MakananModel(
     namaMakanan: "Lentog",
     hargaMakanan: "15.000",
     gambarMakanan: "https://image.idn.media/post/20220101/screenshot-2022-01-02-05-10-19-72-1c337646f29875672b5a61192b9010f9-6d2cbb4bbec2340f770674be006d2944-0c6c08844a9f986440835cb11b7d41d0.jpg",
      ratingMakanan: "4.0",
      deskripsiMakanan: "Lentog adalah hidangan tradisional Indonesia yang terbuat dari ketan yang dimasak dengan santan dan disajikan dengan berbagai lauk seperti ayam, telur, dan sayuran."
  ),
    MakananModel(
      namaMakanan: "Pindang Kerbau",
      hargaMakanan: "15.000",
      gambarMakanan: "https://thumbs.tvonenews.com/thumbnail/2023/04/27/644a8e5011e00-nasi-pindang-kerbau-khas-kudus-jadi-buruan-pemudik_1265_711.jpg",
      ratingMakanan: "4.2",
      deskripsiMakanan: "Pindang kerbau adalah hidangan khas Kudus yang terbuat dari daging kerbau yang dimasak dengan bumbu-bumbu rempah khas Indonesia. Hidangan ini memiliki cita rasa yang kaya dan gurih, serta biasanya disajikan dengan nasi putih hangat. Pindang kerbau sering menjadi hidangan favorit di berbagai acara dan perayaan di Kudus."
    ),
    MakananModel(
      namaMakanan: "Bakso",
      hargaMakanan: "20.000",
      gambarMakanan: "https://upload.wikimedia.org/wikipedia/commons/2/28/Bakso_mi_bihun.jpg?utm_source=id.wikipedia.org&utm_campaign=index&utm_content=original",
      ratingMakanan: "4.5",
      deskripsiMakanan: "Bakso adalah hidangan khas Indonesia yang terbuat dari daging sapi yang digiling halus dan dibentuk menjadi bola-bola kecil. Bakso biasanya disajikan dalam kuah kaldu yang gurih, dengan tambahan mie, tahu, dan sayuran. Hidangan ini sangat populer di seluruh Indonesia dan sering dijual di warung-warung atau gerobak bakso."
    ),
    MakananModel(
      namaMakanan: "Ayam Geprek",
      hargaMakanan: "18.000",
      gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKdhra4RR9qYk1BnI1E355JA-uQU7y5n1zSPTrtcK4BGVvjUDxkCeTU38R&s=10",
      ratingMakanan: "4.5",
      deskripsiMakanan: "Ayam geprek adalah hidangan khas Indonesia yang terdiri dari ayam goreng yang digeprek atau dihancurkan, kemudian disajikan dengan sambal pedas. Hidangan ini memiliki cita rasa yang gurih dan pedas, serta biasanya disajikan dengan nasi putih hangat. Ayam geprek sangat populer di kalangan masyarakat Indonesia, terutama di kalangan anak muda."
   ),
  ];
}