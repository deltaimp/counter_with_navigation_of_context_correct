import 'package:counter_with_navigation_of_context/business/counter_controller.dart';
import 'package:counter_with_navigation_of_context/ui/screen_back.dart';
import 'package:counter_with_navigation_of_context/ui/screen_increment_decrement.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override

  Widget build(BuildContext context) {
    //Get.put(CounterController());
    return Scaffold(
      appBar: AppBar(title: const Text('Screen1')),
      body: Center(
        child: Column ( mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Benvenuto!'),
            ElevatedButton(
              onPressed: () {
                // Navigazione con Navigator standard
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Screen2()),
                );
              },
              child: const Text('Vai a Screen 2'),
            ),
          ],
        ),

      ),
    );
  }
}
