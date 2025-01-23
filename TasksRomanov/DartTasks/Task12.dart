abstract class PaymentSystem {
  void pay(double amount);
  void refund(double amount);
}

class CreditCard implements PaymentSystem {
  @override
  void pay(double amount) {
    print("Платеж через CreditCard: $amount");
  }

  @override
  void refund(double amount) {
    print("Возврат через CreditCard: $amount");
  }
}

class PayPal implements PaymentSystem {
  @override
  void pay(double amount) {
    print("Платеж через PayPal: $amount");
  }

  @override
  void refund(double amount) {
    print("Возврат через PayPal: $amount");
  }
}

void main() {
  PaymentSystem card = CreditCard();
  PaymentSystem paypal = PayPal();

  card.pay(12000.0);
  paypal.refund(800.0);
}