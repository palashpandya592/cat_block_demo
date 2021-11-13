import 'package:cat_api_bloc/feature/cat_screen/data/datamodel/cat_model.dart';
import 'package:dio/dio.dart';

import 'cat_datasource.dart';

class CatDataSourceImpl extends CatDataSource {
  Dio _dio = new Dio();
  late CatModel catModel;

  @override
  Future<CatModel> getCatListData({int page = 0, int pageLimit = 0}) async {
    // TODO Login Auth ------- Start
    try {
      Response response = await _dio.get(
          "https://api.thecatapi.com/v1/breeds?page=$page&limit=$pageLimit");
      //Success Part
      Map<String, dynamic> toJson() => {
            "catList": response.data,
          };
      catModel = CatModel.fromJson(toJson()); //Success.fromJson(response.data);
      print(catModel.catList);
    } on DioError catch (e) {
      //Fail Part
      // if (e.response != null) {
      //    Map<String, dynamic> toJson() => {
      //          "success": null,
      //          "fail": e.response!.data,
      //        };
      //    data = CatModel.fromJson(toJson()); //Success.fromJson(response.data);
      //  }
    }
    // TODO Login Auth ------- End
    return catModel;
  }
}
