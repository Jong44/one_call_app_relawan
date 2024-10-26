import 'package:get/get.dart';
import 'package:one_call/app/controller/main/maps_controller.dart';

class MapBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<MapController>(() => MapController());
  }
}
