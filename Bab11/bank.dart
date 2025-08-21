void main(List<String> args) {
  var yasuoGA = GeneralAccount(
    accountName: "yasuo",
    accountId: "yasuo090",
    accountType: AccountType.general,
    balance: 900000,
    openingDate: DateTime(2024, 8, 21),
  );

  var yasuoSA = SavingAccount(
    accountName: "yasuo",
    accountId: "yasuo090",
    accountType: AccountType.saving,
    balance: 1000000,
    openingDate: DateTime(2024, 8, 21),
  );

  var yasuoIA = InvestAccount(
    accountName: "yasuo",
    accountId: "yasuo090",
    accountType: AccountType.invest,
    balance: 1000000,
    openingDate: DateTime.now(),
    investedBalance: 500000,
  );

  print(yasuoIA.getCurrentBalance());

  print(
    'General Account - Name: ${yasuoGA.accountName}, ID: ${yasuoGA.accountId}, Current Balance: ${yasuoGA.getCurrentBalance()}',
  );
  print(
    'Saving Account - Name: ${yasuoSA.accountName}, ID: ${yasuoSA.accountId}, Current Balance: ${yasuoSA.getCurrentBalance()}',
  );
  print(
    'Invest Account - Name: ${yasuoIA.accountName}, ID: ${yasuoIA.accountId}, Current Balance: ${yasuoIA.getCurrentBalance()}',
  );

  print('Deposit 100000 to General Account: ${yasuoGA.deposit(100000)}');
  print('Withdraw 50000 from General Account: ${yasuoGA.withdraw(50000)}');

  print('Deposit 600000 to Saving Account: ${yasuoSA.deposit(600000)}');
  try {
    print('Withdraw 100000 from Saving Account: ${yasuoSA.withdraw(100000)}');
  } catch (e) {
    print('Saving Account withdraw error: $e');
  }

  print('Deposit 1500000 to Invest Account: ${yasuoIA.deposit(1500000)}');
  print('Withdraw 200000 from Invest Account: ${yasuoIA.withdraw(200000)}');
}

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
