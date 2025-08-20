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
    required DateTime? closingDate,
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
    required DateTime? closingDate,
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
  int withdraw(int amount) => super.withdraw(amount);
}
