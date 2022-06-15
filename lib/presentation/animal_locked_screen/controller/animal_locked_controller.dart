import '../models/animal_locked_model.dart';
import '/core/app_export.dart';
// import 'package:peter1421_s_application21/presentation/animal_locked_screen/models/animal_locked_model.dart';

class AnimalLockedController extends GetxController with StateMixin<dynamic> {
  Rx<AnimalLockedModel> animalLockedModelObj = AnimalLockedModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
