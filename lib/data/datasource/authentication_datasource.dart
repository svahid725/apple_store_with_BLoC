import 'package:apple_store/di/di.dart';
import 'package:apple_store/util/api_exception.dart';
import 'package:dio/dio.dart';

class AuthenticationRemote {
  final Dio _dio = locator.get();

  Future<void> register(
    String username,
    String password,
    String passwordConfirm,
  ) async {
    Map<String, String> data = {
      'username': username,
      'password': password,
      'passwordConfirm': passwordConfirm,
    };
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
      if (response.statusCode == 200){
        print(response.data);
      }
    } on DioError catch (ex) {
      throw ApiException(
        code: ex.response?.statusCode ,
        message: ex.response?.data['message']
      );

    } catch (ex) {}
  }
}
