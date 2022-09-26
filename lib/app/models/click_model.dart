import 'package:get/get.dart';

class Click {
  RxInt tap = 0.obs;

  void increment() => tap.value++;
  void decrement() => tap.value--;
}
