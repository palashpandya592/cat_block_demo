import 'package:cat_api_bloc/feature/cat_screen/domain/usecase/cat_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc.dart';

class CatBloc extends Bloc<CatEvent, CatState> {
  CatUseCase catUseCase;

  CatBloc({required this.catUseCase}) : super(InitialCatState());

  @override
  Stream<CatState> mapEventToState(CatEvent event) async* {
    if (event is GetCatEvent) {
      yield LoadingBeginCatState();
      final result = await catUseCase(
          CatParams(page: event.page, pageLimit: event.pageLimit));
      yield LoadingEndCatState();
      yield result.fold(
        (error) => ErrorState(error.message),
        (success) => GetCatState(catModel: success),
      );
    }
  }
}
