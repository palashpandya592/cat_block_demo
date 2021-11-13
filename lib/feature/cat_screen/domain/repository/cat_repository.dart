import 'package:cat_api_bloc/feature/cat_screen/data/datamodel/cat_model.dart';
import 'package:cat_api_bloc/status_objects/status_objects.dart';
import 'package:dartz/dartz.dart';

abstract class CatRepository {
  Future<Either<Failure, CatModel>> getCatListData({
    int page,
    int pageLimit,
  });
}
