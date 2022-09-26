import 'package:flutter/material.dart';
import 'package:flutter_mvc/app/controllers/home_controller.dart';
import 'package:get/get.dart';

class Segunda extends StatelessWidget {
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda tela'),
      ),
      body: Center(
        child: Text(
          '${controller.click.tap}',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
