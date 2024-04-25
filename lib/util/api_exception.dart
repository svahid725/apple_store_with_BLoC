class ApiException implements Exception {
  int? code;
  String? message;

  ApiException({this.message, this.code});
}
