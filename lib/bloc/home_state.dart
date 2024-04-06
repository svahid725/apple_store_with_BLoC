import 'package:equatable/equatable.dart';

abstract class HomeState extends Equatable {}

class InitHome extends HomeState {
  @override
  List<Object?> get props => [];
}

class UpdateHome extends HomeState {
  int x;

  UpdateHome(this.x);

  @override
  List<Object?> get props => [x];
}

// class Increase extends HomeState {
//   int x;
//
//   Increase(this.x) {
//     ++x;
//   }
//
//   @override
//   List<Object?> get props => throw UnimplementedError();
// }
