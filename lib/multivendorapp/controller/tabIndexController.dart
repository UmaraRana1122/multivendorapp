import 'package:get/get.dart';

import 'package:get/state_manager.dart';

class TabIndexController extends GetxController {
  final RxInt _tabIndex = 0.obs;
  int get tabIndex => _tabIndex.value;

  set setTabIndex(int newValue) {
    _tabIndex.value = newValue;
  }
}
