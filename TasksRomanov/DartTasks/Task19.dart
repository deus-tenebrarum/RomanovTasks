class Device {
  String brand;

  Device(this.brand);

  void turnOn() {
    print("$brand включен");
  }

  void turnOff() {
    print("$brand выключен");
  }
}

class Smartphone extends Device {
  Smartphone(String brand) : super(brand);

  void takePhoto() {
    print("$brand делает фото");
  }
}

class Laptop extends Device {
  Laptop(String brand) : super(brand);

  void InternetConnection() {
    print("$brand подключен к интернету");
  }
}

void main() {
  Smartphone smartphone = Smartphone("Samsung");
  smartphone.takePhoto();
  smartphone.turnOff();

  Laptop laptop = Laptop("HP");
  laptop.InternetConnection();
  laptop.turnOff();
}