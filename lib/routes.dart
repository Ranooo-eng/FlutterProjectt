import 'package:get/get.dart';
import 'package:ujicoba/pages/confirm_regristaion_page.dart';
import 'package:ujicoba/pages/registration_page.dart';
import 'package:ujicoba/pages/listmakanan_page.dart';

class Routes {
  // list variable nama halaman
  static const String registration = "/registration";
  static const String confirmRegistration = "/confirm_registration";
  static const String listMakanan = "/list_makanan";

  static final MyPages=[
    GetPage(name: registration, page: ()=> RegistrationPage()),
    GetPage(name: confirmRegistration, page: ()=> ConfirmRegistration()),
    GetPage(name: listMakanan, page: ()=> ListMakananPage()),
    
  ];
}
