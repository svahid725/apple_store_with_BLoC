import 'package:apple_store/bloc/authentication/auth_event.dart';
import 'package:apple_store/bloc/authentication/auth_state.dart';
import 'package:apple_store/data/repository/authentication_repository.dart';
import 'package:apple_store/di/di.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepository _repository = locator.get();

  AuthBloc() : super(AuthInitiateState()){
     on<AuthLoginRequest>((event, emit) async {
       emit(AuthLoadingState());
       Either<String, String> response = await _repository.login(event.username, event.password);
       emit(AuthResponseState(response));
     },);
  }


}