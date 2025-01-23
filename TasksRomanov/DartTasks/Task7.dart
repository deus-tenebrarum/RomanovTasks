class Counter {
  static int _count = 0;

  Counter() {
    _count++;
  }

  static int getCount() {
    return _count;
  }
}

void main() {
  Counter obj1 = Counter();
  Counter obj2 = Counter();
  Counter obj3 = Counter();
  Counter obj4 = Counter();
  Counter obj5 = Counter();
  Counter obj6 = Counter();

  print("Количество объектов: ${Counter.getCount()}");
}