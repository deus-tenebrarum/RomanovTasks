class Animal {
  void move() {}
}

class Fish extends Animal {
  @override
  void move() {
    print("Рыба плывёт");
  }
}

class Bird extends Animal {
  @override
  void move() {
    print("Птица летит");
  }
}

class Dog extends Animal {
  @override
  void move() {
    print("Собака бежит");
  }
}

void main() {
  Fish().move();
  Bird().move();
  Dog().move();
}