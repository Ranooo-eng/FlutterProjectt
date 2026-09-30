import 'package:get/get.dart';

class ConfirmRegistrationController extends GetxController {
  late String name;
  late String alamat;
  late String jenisKelamin;
  late String email;
  late String noHp;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    final arguments = Get.arguments;
    name = arguments['name'];
    jenisKelamin = arguments['jenis_kelamin'];
    alamat = arguments['alamat'];
    email = arguments['email'];
    noHp = arguments['noHp'];
  }
}