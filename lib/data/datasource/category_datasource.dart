import 'package:apple_store/data/model/category.dart';
import 'package:apple_store/di/di.dart';
import 'package:apple_store/util/api_exception.dart';
import 'package:dio/dio.dart';

abstract class ICategoryDatasource {
  Future<List<Category>> getCategories();
}

class CategoryRemoteDatasource extends ICategoryDatasource {
  final Dio _dio = locator.get();

  @override
  Future<List<Category>> getCategories() async {
    try {
      Response response = await _dio.get('collections/category/records');
      return response.data['items'].map<Category>((item )=> Category.fromJson(item)).toList();
    } on DioError catch (ex) {
      throw ApiException(
        code: ex.response?.statusCode,
        message: ex.response?.data['message'],
      );
    } catch (ex) {
      throw ApiException(
        code: 0,
        message: 'unknown error',
      );
    }
  }
}
