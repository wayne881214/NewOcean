import '../models/animal_gift_model.dart';
import '/core/app_export.dart';
// import 'package:peter1421_s_application21/presentation/animal_gift_screen/models/animal_gift_model.dart';

class AnimalGiftController extends GetxController with StateMixin<dynamic> {
  Rx<AnimalGiftModel> animalGiftModelObj = AnimalGiftModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
