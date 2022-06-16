import '../models/animal_main_model.dart';
import '/core/app_export.dart';
// import 'package:peter1421_s_application21/presentation/animal_main_screen/models/animal_main_model.dart';

class AnimalMainController extends GetxController with StateMixin<dynamic> {
  Rx<AnimalMainModel> animalMainModelObj = AnimalMainModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
