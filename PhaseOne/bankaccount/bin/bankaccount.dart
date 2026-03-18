void main() {
  var account = BankAccount(100); // balance : 100
  print(account.deposit(10)); // output: balance is 110 dollar, you deposited 10 dollar
}

class BankAccount {
  double balance;

  BankAccount(this.balance);

  String deposit(double n) {
    balance += n;
    return "balance is $balance dollar, you deposited $n dollar";
  }

  String withdraw(double n) {
    if (balance != 0) {
      balance -= n;
      return "balance is $balance dollar, you withdrawed $n dollar";
    } else {
      return "You Don't have money";
    }
  }
}
