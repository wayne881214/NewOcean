// import 'package:peter1421_s_application17/core/app_export.dart';
// import 'package:peter1421_s_application17/data/apiClient/api_client.dart';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:untitled/core/utils/pref_utils.dart';
import '../../core/app_export.dart';
import '../../core/utils/color_constant.dart';


import '../../data/apiClient/api_client.dart';
import '../network/network_info.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(PrefUtils());
    Get.put(ApiClient());
    Connectivity connectivity = Connectivity();
    Get.put(NetworkInfo(connectivity));
  }
}
