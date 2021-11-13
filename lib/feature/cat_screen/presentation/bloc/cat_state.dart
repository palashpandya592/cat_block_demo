import 'package:cat_api_bloc/feature/cat_screen/data/datamodel/cat_model.dart';
import 'package:meta/meta.dart';

@immutable
abstract class CatState {}

class InitialCatState extends CatState {}

class LoadingBeginCatState extends CatState {}

class LoadingEndCatState extends CatState {}

class ErrorState extends CatState {
  final String message;

  ErrorState(this.message);
}
class GetCatState extends CatState {
  CatModel catModel;

  GetCatState({required this.catModel});
}
