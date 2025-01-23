class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity);
}

class Store {
  List<Product> products = [];

  void addProduct(Product product) {
    products.add(product);
    print("Товар добавлен: ${product.name}");
  }

  void removeProduct(String name) {
    products.removeWhere((product) => product.name == name);
    print("Товар удален: $name");
  }

  void searchProduct(String name) {
    products.where((product) => product.name == name).forEach((product) {
      print("Найден товар: ${product.name}, цена: ${product.price}, количество: ${product.quantity}");
    });
  }
}

void main() {
  Store store = Store();
  store.addProduct(Product("рыба", 100.5, 25));
  store.addProduct(Product("масло", 52.4, 50));
  store.searchProduct("рыба");
  store.removeProduct("масло");
}