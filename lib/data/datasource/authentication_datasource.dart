import 'package:apple_store/di/di.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

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
      debugPrint(ex.message.toString());
      print(ex.response?.data['message']?.toString());
    } catch (ex) {}
  }
}
