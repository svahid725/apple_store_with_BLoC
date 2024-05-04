import 'package:apple_store/data/datasource/authentication_datasource.dart';
import 'package:apple_store/di/di.dart';
import 'package:apple_store/util/api_exception.dart';
import 'package:dartz/dartz.dart';

class AuthenticationRepository {
  final IAuthenticationDatasource _dataSource = locator.get();

  Future<Either<String, String>> register() async {
    try {
      await _dataSource.register('test123', '12345678', '12345678');
      return right('ثبت نام انجام شد');
    } on ApiException catch (ex) {
      return left(ex.message ?? 'خطا محتوای متنی ندارد');
    }
  }
}
