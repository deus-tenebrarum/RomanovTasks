class BankAccount {
  final String accountNumber ;
  double _balance;

  BankAccount(this.accountNumber , this._balance);

  void deposit(double amount) {
    _balance += amount;
    print("Пополнение счёта №$accountNumber на $amount. Баланс: $_balance");
  }

  void withdraw(double amount) {
    if (_balance >= amount) {
      _balance -= amount;
      print("Снятие со счёта №$accountNumber $amount. Баланс: $_balance");
    } else {
      print("Недостаточно средств.");
    }
  }
}

void main() {
  BankAccount account = BankAccount("534214646", 15000.0);
  account.deposit(1500.0);
  account.withdraw(3400.0);
  account.withdraw(340000.0);
}