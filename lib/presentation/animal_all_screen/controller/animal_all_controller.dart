import '../models/animal_all_model.dart';
import '/core/app_export.dart';
// import 'package:peter1421_s_application21/presentation/animal_all_screen/models/animal_all_model.dart';

class AnimalAllController extends GetxController with StateMixin<dynamic> {
  Rx<AnimalAllModel> animalAllModelObj = AnimalAllModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
