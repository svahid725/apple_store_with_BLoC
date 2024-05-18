import 'package:apple_store/data/model/category.dart';
import 'package:dartz/dartz.dart';

abstract class CategoryState{}

class CategoryInitState extends CategoryState{}

class CategoryLoadingState extends CategoryState{}

class CategoryResponseState extends CategoryState{
  final Either<String,List<Category>> response;

  CategoryResponseState(this.response);
}