

import 'package:cat_api_bloc/feature/cat_screen/data/datamodel/cat_model.dart';

abstract class CatDataSource {

  Future<CatModel> getCatListData({
    int page,
    int pageLimit,
  });
}
