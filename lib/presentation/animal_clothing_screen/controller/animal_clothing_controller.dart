import '../models/animal_clothing_model.dart';
import '/core/app_export.dart';
// import 'package:peter1421_s_application21/presentation/animal_clothing_screen/models/animal_clothing_model.dart';

class AnimalClothingController extends GetxController with StateMixin<dynamic> {
  Rx<AnimalClothingModel> animalClothingModelObj = AnimalClothingModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
