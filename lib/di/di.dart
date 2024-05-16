import 'package:apple_store/data/datasource/authentication_datasource.dart';
import 'package:apple_store/data/repository/authentication_repository.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

GetIt locator = GetIt.instance;

Future<void> getItInit() async {

  // components
  locator.registerSingleton<Dio>(
    Dio(
      BaseOptions(
        baseUrl: 'https://startflutter.ir/api/',
        headers: {'accept': 'application/json'},
      ),
    ),
  );

  locator.registerSingleton<SharedPreferences>(await SharedPreferences.getInstance());

  // data sources
  locator.registerFactory<IAuthenticationDatasource>(() => AuthenticationRemote());

  //repositories
  locator.registerFactory<IAuthRepository>(() => AuthenticationRepository());
}
