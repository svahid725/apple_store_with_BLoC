import 'package:apple_store/di/di.dart';
import 'package:apple_store/util/api_exception.dart';
import 'package:dio/dio.dart';

abstract class IAuthenticationDatasource {
  Future<void> register(String username, String password, String passwordConfirm);
}

class AuthenticationRemote implements IAuthenticationDatasource {
  final Dio _dio = locator.get();

  @override
  Future<void> register(
    String username,
    String password,
    String passwordConfirm,
  ) async {
    Response response;
    try {
      response = await _dio.post(
        'collections/users/records',
        data: {
          'username': username,
          'password': password,
          'passwordConfirm': passwordConfirm,
        },
      );
      if (response.statusCode == 200) {
        print(response.data);
      }
    } on DioError catch (ex) {
      throw ApiException(code: ex.response?.statusCode, message: ex.response?.data['message']);
    } catch (ex) {
      throw ApiException(code: 0, message: 'unknown error');
    }
  }
}
