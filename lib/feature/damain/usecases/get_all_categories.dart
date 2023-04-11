
import 'package:dartz/dartz.dart';
import 'package:mone_dart/feature/damain/entities/category.dart';
import 'package:mone_dart/feature/damain/repositories/category_repository.dart';

import '../../../core/error/failure.dart';

class GetAllCategories {
  final CategoryRepository categoryRepository;

  GetAllCategories(this.categoryRepository);


  Future <Either<Failure,List<Category>>> call() async {
    return await categoryRepository.getAllCategory();
  }

}
