void main(List<String> args) {}

enum AccountType { saving, invest, general }

abstract class Account {
  String accountName;
  String accountId;
  AccountType accountType;
  int balance;
  DateTime openingDate;
  DateTime? closingDate;

  Account({
    required this.accountName,
    required this.accountId,
    required this.accountType,
    required this.balance,
    required this.openingDate,
    required this.closingDate,
  });

  int withdraw(int amount) {
    if (balance < amount) {
      throw Exception("Your balance isn't enough");
    } else {
      balance -= amount;
      return balance;
    }
  }

  int deposit(int amount) {
    balance += amount;
    return balance;
  }

  int getCurrentBalance() => balance;
}

class GeneralAccount extends Account {
  GeneralAccount({
    required String accountName,
    required String accountId,
    required AccountType accountType,
    required int balance,
    required DateTime openingDate,
    DateTime? closingDate,
  }) : super(
         accountName: accountName,
         accountId: accountId,
         accountType: accountType,
         balance: balance,
         openingDate: openingDate,
         closingDate: closingDate,
       );

  @override
  int deposit(int amount) => super.deposit(amount);

  @override
  int withdraw(int amount) => super.withdraw(amount);

  @override
  int getCurrentBalance() => super.getCurrentBalance();
}

class SavingAccount extends Account {
  SavingAccount({
    required String accountName,
    required String accountId,
    required AccountType accountType,
    required int balance,
    required DateTime openingDate,
    DateTime? closingDate,
  }) : super(
         accountName: accountName,
         accountId: accountId,
         accountType: accountType,
         balance: balance,
         openingDate: openingDate,
         closingDate: closingDate,
       );

  @override
  int getCurrentBalance() => super.getCurrentBalance();

  @override
  int deposit(int amount) {
    if (amount > 500000) {
      int interest = (amount * 0.01).floor();
      balance = balance + amount + interest;
    } else {
      balance += amount;
    }
    return balance;
  }

  @override
  int withdraw(int amount) {
    if (DateTime.now().difference(openingDate).inDays < 90) {
      throw Exception("You can withdraw after 90 days");
    } else {
      if (balance < amount) {
        throw Exception("Your balance isn't enough");
      } else {
        balance -= amount;
        return balance;
      }
    }
  }

  int getInterest() {
    int interest = (balance * 0.04).floor();
    balance += interest;
    return balance;
  }
}

class InvestAccount extends Account {
  int investedBalance;

  InvestAccount({
    required String accountName,
    required String accountId,
    required AccountType accountType,
    required int balance,
    required DateTime openingDate,
    DateTime? closingDate,
    required this.investedBalance,
  }) : super(
         accountName: accountName,
         accountId: accountId,
         accountType: accountType,
         balance: balance,
         openingDate: openingDate,
         closingDate: closingDate,
       );

  int getCurrentInvestedBalance() => investedBalance;

  @override
  int getCurrentBalance() => super.getCurrentBalance();

  @override
  int deposit(int amount) {
    if (amount > 1000000) {
      balance = balance + amount + 25000;
    } else {
      balance += amount;
    }
    return balance;
  }

  @override
  int withdraw(int amount) {
    int calculateTax = (amount * 0.025).floor();
    if (balance < amount + calculateTax) {
      throw Exception("Your balance isn't enough");
    } else {
      balance -= (amount + calculateTax);
      return balance;
    }
  }

  int buyStock(int amount) {
    if (balance < amount) {
      throw Exception("Your balance isn't enough");
    } else {
      int calculateTax = (amount * 0.01).floor();
      balance -= (amount + calculateTax);
      investedBalance = amount;
      return balance;
    }
  }

  int sellStock(int amount) {
    if (investedBalance < amount) {
      throw Exception("Your invested balance isn't enough");
    } else {
      int calculateTax = (amount * 0.01).floor();
      investedBalance -= amount;
      balance = balance + amount - calculateTax;
      return balance;
    }
  }
}
