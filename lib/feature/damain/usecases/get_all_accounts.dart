
import 'package:dartz/dartz.dart';
import 'package:mone_dart/feature/damain/repositories/account_repository.dart';

import '../../../core/error/failure.dart';
import '../entities/account.dart';

class GetAllAccounts {
   final AccountRepository accountRepository;

  GetAllAccounts(this.accountRepository);

   Future <Either<Failure,List<Account>>> call() async {
     return await accountRepository.getAllAccounts();
  }

}
