import 'package:apple_store/bloc/home_event.dart';
import 'package:apple_store/bloc/home_state.dart';
import 'package:bloc/bloc.dart';

class HomeBloc extends Bloc<ClickEvent, HomeState> {
  int x = 0;
  HomeBloc() : super(InitHome()) {
    on<ClickEvent>((event, emit) {
      emit(UpdateHome(++x));
    });
    // on<ClickEvent> ((event, emit) {
    //   emit(Increase(2));
    // },);
  }
}
