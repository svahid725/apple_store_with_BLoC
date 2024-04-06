import 'package:dio/dio.dart';

class AuthenticationRemote {
  final _dio = Dio(BaseOptions(
      baseUrl: 'https://startflutter.ir/api/'),

  );

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
    print(data);
    
    final response = await _dio.post(
      'collections/users/records',
      data: data,
    );

    print(response.statusCode);
  }
}
