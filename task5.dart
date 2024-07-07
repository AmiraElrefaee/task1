class BankAcount {
  final String name;
  num balance;
  BankAcount({required this.name, required this.balance});

  deposit(num ValueAdded) {
    balance = balance + ValueAdded;
    print('the balance are $balance');
  }

  withdraw(num ValueAdded) {
    if (ValueAdded <= balance) {
      balance = balance - ValueAdded;
      print('the balance are $balance');
    } else {
      throw Overdrawn(
          'you cannot withdraw because is less than the value you want you withdraw');
    }
  }
}

class Overdrawn implements Exception {
  final String masseage;
  Overdrawn(this.masseage);
}

void main() {
  BankAcount bankAcount = BankAcount(name: 'amira', balance: 200);
  try {
    bankAcount.deposit(200);
    bankAcount.withdraw(500);
  } on Overdrawn catch (e) {
    var masseage;
    print(e.masseage);
  }
}
