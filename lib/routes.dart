import 'package:get/get.dart';
import 'package:ujicoba/pages/confirm_regristaion_page.dart';
import 'package:ujicoba/pages/registration_page.dart';
import 'package:ujicoba/pages/listmakanan_page.dart';
import 'package:ujicoba/pages/detailmakanan_page.dart';
import 'package:ujicoba/pages/mainmenu_page.dart';
import 'package:ujicoba/pages/menuDrawer_page.dart';


class Routes {
  // list variable nama halaman
  static const String registration = "/registration";
  static const String confirmRegistration = "/confirm_registration";
  static const String listMakanan = "/list_makanan";
  static const String detailMakanan = "/detail_makanan";
  static const String mainMenu = "/main_menu";
  static const String menuDrawer = "/menu_drawer";

  static final MyPages=[
    GetPage(name: registration, page: ()=> RegistrationPage()),
    GetPage(name: confirmRegistration, page: ()=> ConfirmRegistration()),
    GetPage(name: listMakanan, page: ()=> ListMakananPage()),
    GetPage(name: detailMakanan, page: ()=> DetailMakananPage()),
    GetPage(name: mainMenu, page: ()=> MainMenuPage()),
    GetPage(name: menuDrawer, page: ()=> MenudrawerPage()),

  ];
}
