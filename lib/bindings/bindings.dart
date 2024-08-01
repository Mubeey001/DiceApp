import 'package:dice/screen/dice_screen.dart';
import 'package:get/get.dart';

class Binding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => const DiceScreen());
  }
}
