import 'package:counter_with_navigation_of_context/business/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Screen3 extends StatelessWidget {
  const Screen3 ({super.key});

  @override
  Widget build(BuildContext context) {
    // final controller = CounterController.to;
    final controller = Get.find<CounterController>();

    return Scaffold (
        appBar: AppBar(title: const Text('Screen3')),
        body: Center (
            child: Column (
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text ('Current counter value: '),
                Obx(() => Text (
                  '${controller.uiCounter.value}',
                  style: Theme.of(context).textTheme.headlineMedium,
                )),
                const SizedBox(height: 20),
                IconButton (
                  icon: const Icon (Icons.add),
                  onPressed: controller.increment,
                ),
                const SizedBox(height: 20),
                ElevatedButton(onPressed: () {
                  //Get.back();
                  Navigator.of(context).pop(); // Torna indietro con Navigator
                },
                    child: const Text ('Go back'))

              ],
            )

        )
    );
  }
}