import '../models/hamburger_model.dart';
import '/core/app_export.dart';
// import 'package:peter1421_s_application17/presentation/hamburger_screen/models/hamburger_model.dart';

class HamburgerController extends GetxController with StateMixin<dynamic> {
  Rx<HamburgerModel> hamburgerModelObj = HamburgerModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
