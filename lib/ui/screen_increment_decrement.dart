import 'package:counter_with_navigation_of_context/business/counter_controller.dart';
import 'package:counter_with_navigation_of_context/ui/screen_back.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Screen2 extends StatelessWidget {
  const Screen2 ({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CounterController());

    return Scaffold (
      appBar: AppBar(title: const Text ('Screen 2')),
      body: Center (
          child: GetBuilder<CounterController>(
            init: CounterController(),
            dispose: (_) => print ('CounterController disposed da GetBuilder'), // qui lui fa la dispose
            builder: (controller) {
              return Column (
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Current counter value:'),
                  Obx(() => Text(
                    '${controller.uiCounter.value}',
                    style: Theme.of(context).textTheme.headlineMedium,
                  )),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: const Icon (Icons.remove),
                        onPressed: controller.decrement,
                      ),
                      IconButton (
                        icon: const Icon (Icons.add),
                        onPressed: controller.increment,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton (onPressed: () {
                    // Navigazione con Navigator standard
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Screen3()),
                    );
                  },
                    child: const Text('Go to Screen 3'),
                  )
                ],
              );
            },
          )
      ),
    );
  }
}