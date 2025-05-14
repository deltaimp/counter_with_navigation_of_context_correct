import 'package:get/get.dart';
import '../model/counter.dart';

class CounterController extends GetxController {
  final Counter _counter = Counter();
  var uiCounter = 0.obs;

  @override
  void onInit() {
    super.onInit();
    _initializeCounter();
  }

  void _initializeCounter() {
    _counter.getCounter().then((value) {
      uiCounter.value=value;
    });
  }

  // metodo per incrementare
  // chiama l'updateCounter con il nuovo valore, il che restituisce un Future
  // then, dato il nuovo valore restituito, aggiorna la variabile
  void increment() {
    _counter.updateCounter(uiCounter.value + 1).then((newValue) {
      uiCounter.value = newValue;
    });
  }

  // metodo per decrementare
  // chiama l'updateCounter con il nuovo valore, il che restituisce un Future
  // then, dato il nuovo valore restituito, aggiorna la variabile
  void decrement() {
    _counter.updateCounter(uiCounter.value - 1).then((newValue) {
      uiCounter.value = newValue;
    });
  }

  // definizione scorciatoia per ottenere il controller
  static CounterController get to => Get.find();

  @override
  void onClose() {
    print ('CounterController disposed');
    super.onClose();
  }


}