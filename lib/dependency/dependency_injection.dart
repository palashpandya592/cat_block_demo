import 'package:cat_api_bloc/feature/cat_screen/data/datasource/cat_datasource.dart';
import 'package:cat_api_bloc/feature/cat_screen/data/datasource/cat_datasource_impl.dart';
import 'package:cat_api_bloc/feature/cat_screen/data/repository/cat_repository_impl.dart';
import 'package:cat_api_bloc/feature/cat_screen/domain/repository/cat_repository.dart' as repo;
import 'package:cat_api_bloc/feature/cat_screen/domain/usecase/cat_usecase.dart';
import 'package:cat_api_bloc/feature/cat_screen/presentation/bloc/cat_bloc.dart';

import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> initGetServiceLocator() async {
  //Bloc
 // getIt.registerFactory(() =>FetchCatBloc(repository:CatRepositoryImlp()));
  ///Cate PAGE
//Bloc
  getIt.registerFactory(() => CatBloc( catUseCase: getIt()));
//Use case
  getIt.registerFactory(() => CatUseCase(catRepository: getIt()));
//DataSource
  getIt.registerLazySingleton<CatDataSource>(() => CatDataSourceImpl());
//Repository
  getIt.registerLazySingleton<repo.CatRepository>(() => CatRepositoryImpl(catDataSource: getIt()));

}
