import 'package:apple_store/bloc/category/category_event.dart';
import 'package:apple_store/bloc/category/category_state.dart';
import 'package:apple_store/data/model/category.dart';
import 'package:apple_store/data/repository/category_repository.dart';
import 'package:apple_store/di/di.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';

class CategoryBloc extends Bloc<CategoryEvent,CategoryState> {
  final ICategoryRepository _repository = locator.get();

  CategoryBloc() : super (CategoryInitState()){
    on<CategoryRequestList>((event, emit) async{
      emit(CategoryLoadingState());
      Either<String,List<Category>> response = await _repository.getCategories();
      emit(CategoryResponseState(response));
    },);
  }


}