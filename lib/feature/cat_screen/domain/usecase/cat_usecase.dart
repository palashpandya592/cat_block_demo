import 'package:cat_api_bloc/feature/cat_screen/data/datamodel/cat_model.dart';
import 'package:cat_api_bloc/feature/cat_screen/domain/repository/cat_repository.dart';
import 'package:cat_api_bloc/status_objects/status_objects.dart';
import 'package:cat_api_bloc/usecase/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class CatUseCase extends UseCase<CatModel, CatParams> {
  CatRepository catRepository;

  CatUseCase({required this.catRepository});

  @override
  Future<Either<Failure, CatModel>> call(CatParams params) async {
    return await catRepository.getCatListData(
        page:params.page, pageLimit: params.pageLimit
    );
  }
}

class CatParams extends Equatable {
  final int page;
  final int pageLimit;

  CatParams({this.page=0, this.pageLimit=0});

  @override
  List<Object> get props => [page, pageLimit];
}
