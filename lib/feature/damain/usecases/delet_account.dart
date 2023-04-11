
import '../repositories/account_repository.dart';

class DeleteAccount {
  final AccountRepository accountRepository;

  DeleteAccount(this.accountRepository);

  deleteAccount(int id) async {
    await accountRepository.deleteAccount(id);
  }

}