import 'package:flutter/material.dart';
import 'package:flutter_mvc/app/controllers/home_controller.dart';
import 'package:flutter_mvc/app/views/segunda_tela.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Incremento / decremento'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Obx(
                () => Text(
                  '${controller.click.tap}',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () => controller.click.increment(),
                  icon: Icon(
                    Icons.add,
                    color: Colors.green,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    controller.click.decrement();

                    if (controller.click.tap < 0) {
                      controller.click.increment();
                    }
                  },
                  icon: Icon(Icons.remove, color: Colors.redAccent),
                ),
              ],
            ),
            ElevatedButton.icon(
              onPressed: () => Get.to(
                () => Segunda(),
                transition: Transition.downToUp,
              ),
              icon: Icon(Icons.navigate_next),
              label: Text('segunda tela'),
            )
          ],
        ),
      ),
    );
  }
}
