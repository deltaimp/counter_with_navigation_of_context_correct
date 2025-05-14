class Counter {
  int _counterInt = 0;

  Future<int> getCounter() {
    return Future.delayed(const Duration(seconds: 3), () => _counterInt);
  }

  Future<int> updateCounter (int newValue) {
    return Future.delayed(const Duration(seconds: 2), () {
      _counterInt = newValue;
      return _counterInt;
    });
  }
}
