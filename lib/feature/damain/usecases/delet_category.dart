
import 'package:mone_dart/feature/damain/repositories/category_repository.dart';

class DeleteCategory {
  final CategoryRepository categoryRepository;

  DeleteCategory(this.categoryRepository);

  deleteCategory(int id) async {
    await categoryRepository.deleteCategory(id);
  }
}