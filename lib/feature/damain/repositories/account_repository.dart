

import 'package:dartz/dartz.dart';
import 'package:mone_dart/core/error/failure.dart';
import 'package:mone_dart/feature/damain/entities/account.dart';

abstract class AccountRepository{

 Future <Either<Failure,List<Account>>>  getAllAccounts();

  addAccount(String name);

  deleteAccount(int id);

}