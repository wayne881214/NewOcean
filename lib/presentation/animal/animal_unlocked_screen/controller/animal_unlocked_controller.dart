import '../models/animal_unlocked_model.dart';
import '/core/app_export.dart';
// import 'package:peter1421_s_application21/presentation/animal_unlocked_screen/models/animal_unlocked_model.dart';

class AnimalUnlockedController extends GetxController with StateMixin<dynamic> {
  Rx<AnimalUnlockedModel> animalUnlockedModelObj = AnimalUnlockedModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
