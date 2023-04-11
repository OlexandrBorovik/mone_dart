import 'package:flutter/foundation.dart';

import '../repositories/category_repository.dart';

class AddCategory {
  final CategoryRepository categoryRepository;

  AddCategory(this.categoryRepository);

  addCategory(String name) async {
    await categoryRepository.addCategory(name);
  }

}