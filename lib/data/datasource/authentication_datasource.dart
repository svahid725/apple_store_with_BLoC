import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class AuthenticationRemote {
  final _dio = Dio(
    BaseOptions(
      baseUrl: 'https://startflutter.ir/api/',
      headers: {'accept': 'application/json'},
    ),
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
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
