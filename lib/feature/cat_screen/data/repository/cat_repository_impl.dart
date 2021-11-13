import 'package:cat_api_bloc/feature/cat_screen/data/datamodel/cat_model.dart';
import 'package:cat_api_bloc/feature/cat_screen/data/datasource/cat_datasource.dart';
import 'package:cat_api_bloc/feature/cat_screen/domain/repository/cat_repository.dart';
import 'package:cat_api_bloc/status_objects/status_objects.dart';
import 'package:dartz/dartz.dart';

class CatRepositoryImpl extends CatRepository {
  CatDataSource catDataSource;

  CatRepositoryImpl({required this.catDataSource});
  
  @override
  Future<Either<Failure, CatModel>> getCatListData({int page=0, int pageLimit=0}) async {
    final result = await catDataSource.getCatListData(
        page:page, pageLimit: pageLimit);
    return Right(result);
  }
}
