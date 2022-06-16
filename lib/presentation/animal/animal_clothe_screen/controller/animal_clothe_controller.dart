import '../models/animal_clothe_model.dart';
import '/core/app_export.dart';
// import 'package:peter1421_s_application21/presentation/animal_clothe_screen/models/animal_clothe_model.dart';

class AnimalClotheController extends GetxController with StateMixin<dynamic> {
  Rx<AnimalClotheModel> animalClotheModelObj = AnimalClotheModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
