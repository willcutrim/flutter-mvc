import 'package:flutter_mvc/app/models/click_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final click = Get.put(Click());
}
