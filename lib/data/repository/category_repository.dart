
import 'package:apple_store/data/datasource/category_datasource.dart';
import 'package:apple_store/data/model/category.dart';
import 'package:apple_store/di/di.dart';
import 'package:apple_store/util/api_exception.dart';
import 'package:dartz/dartz.dart';

abstract class ICategoryRepository {
  Future<Either<String,List<Category>>> getCategories();
}

class CategoryRepository extends ICategoryRepository {
  final ICategoryDatasource _datasource = locator.get();

  @override
  Future<Either<String, List<Category>>> getCategories() async {
    try{
      List<Category> resposne = await _datasource.getCategories();
      return right(resposne);
    } on ApiException catch (ex){
      return left(ex.message ?? 'خطا محتوای متنی ندارد');
    }
  }

}