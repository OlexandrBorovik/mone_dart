

import 'package:dartz/dartz.dart';
import 'package:mone_dart/core/error/failure.dart';
import 'package:mone_dart/feature/damain/entities/account.dart';
import 'package:mone_dart/feature/damain/entities/category.dart';

abstract class CategoryRepository{

 Future <Either<Failure,List<Category>>>  getAllCategory();

  addCategory(String name);

  deleteCategory(int id);

}