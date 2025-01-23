class Product {
  String name;
  double price;

  Product(this.name, this.price);
}

class Order {
  List<Product> products = [];

  void addProduct(Product product) {
    products.add(product);
  }

  double getTotal() {
    double total = 0;
    for (var product in products) {
      total += product.price;
    }
    return total;
  }
}

class Customer {
  String name;
  List<Order> orderHistory = [];

  Customer(this.name);

  void addOrder(Order order) {
    orderHistory.add(order);
  }

  void showOrderHistory() {
    for (var order in orderHistory) {
      print("Заказ клиента $name: ");
      for (var product in order.products) {
        print("${product.name}: ${product.price}₽");
      }
      print("Общая стоимость: ${order.getTotal()}₽");
    }
  }
}

void main() {
  Customer customer = Customer("Николай");

  Order order1 = Order();
  order1.addProduct(Product("Компьютер", 25500));
  order1.addProduct(Product("Телефон", 10000));

  customer.addOrder(order1);

  customer.showOrderHistory();
}