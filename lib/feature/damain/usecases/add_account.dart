import '../repositories/account_repository.dart';

class AddAccount {
  final AccountRepository accountRepository;

  AddAccount(this.accountRepository);

   addAccount(String name) async {
    await accountRepository.addAccount(name);
  }

}