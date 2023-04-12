


import 'package:mone_dart/feature/damain/entities/account.dart';



abstract class AccauntLocalDataSource {
  final List<Account> accounts = <Account>[];

 List<Account>  getAllAccounts() {
    return accounts;
  }

  Account? findAccount(String name) {
    for (int i = 0; i < accounts.length;) {
      if (accounts != null && accounts[i].name == name) {
        return accounts[i];
      }
    }
    return null;
  }

  void addAccount(Account account) {
    accounts.add(account);
  }

  void deletAccount(String name) {
    for (int i = 0; i < accounts.length;) {
      if (accounts != null && accounts[i].name == name) {
        accounts.removeAt(i);
      }
    }
  }
}