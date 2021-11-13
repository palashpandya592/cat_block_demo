import 'package:bloc/bloc.dart';
import 'package:cat_api_bloc/dependency/dependency_injection.dart';
import 'package:cat_api_bloc/feature/cat_screen/data/datamodel/cat_model.dart';
import 'package:cat_api_bloc/feature/cat_screen/presentation/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CatDesign extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new CatDesignState();
}

class CatDesignState extends State<CatDesign> {
  // ignore: close_sinks
  Bloc bloc = getIt<CatBloc>();
  CatModel? catModel;
  bool isLoading = false;

  @override
  void initState() {
    bloc.add(GetCatEvent(page: 1, pageLimit: 10));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("Build Api");

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xff41B0B9),
        appBar: AppBar(
          backgroundColor: Color(0xff2A878D),
          centerTitle: true,
          title: const Text(
            "CAT NAME",
            style: TextStyle(fontSize: 22),
          ),
        ),
        body: BlocListener(
          bloc: bloc,
          listener: (BuildContext context, state) {
            if (state is LoadingBeginCatState) isLoading = true;
            if (state is LoadingEndCatState) isLoading = false;
            if (state is GetCatState) {
              catModel = state.catModel;
            }
          },
          child: BlocBuilder(
            bloc: bloc,
            builder: (context, state) => Container(
              height: 300,
              child: (isLoading)
                  ? CircularProgressIndicator()
                  : ListView.builder(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      itemCount: catModel?.catList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          child: Container(
                            height: 150,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              children: [
                                // ClipRRect(
                                //   borderRadius: BorderRadius.only(
                                //       topLeft: Radius.circular(8),
                                //       bottomLeft: Radius.circular(8)),
                                //   child: Image(
                                //     image: welcome[index]?.image?.url == null
                                //         ? AssetImage('assetsImage/catimage.jpg')
                                //         : CachedNetworkImageProvider(
                                //         catModel!.catList[index].image.url.toString()),
                                //     width: 140,
                                //     height: 150,
                                //     fit: BoxFit.cover,
                                //   ),
                                // ),
                                SizedBox(
                                  height: 150,
                                  width: 190,
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Flexible(
                                            child: FittedBox(
                                              fit: BoxFit.fill,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 6),
                                                child: Text(
                                                  catModel!.catList[index].name,
                                                  maxLines: 2,
                                                  style: TextStyle(
                                                      color: Color(0xff77CCD3),
                                                      textBaseline: TextBaseline
                                                          .alphabetic,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w800),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 60,
                                            height: 45,
                                            decoration: BoxDecoration(
                                                color: Color(0xff56FDAD),
                                                borderRadius: BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(8))),
                                            child: Center(
                                                child: Text(
                                              catModel!
                                                  .catList[index].countryCode,
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  color: Color(0xff796E5F),
                                                  fontWeight: FontWeight.w500),
                                            )),
                                          ),
                                        ],
                                      ),
                                      Flexible(
                                        child: Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: Text(
                                            catModel!
                                                .catList[index].description,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.justify,
                                            maxLines: 7,
                                            style: TextStyle(
                                              fontSize: 11,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
            ),
          ),
        ),
      ),
    );
  }
}
