import 'package:cat_api_bloc/feature/cat_screen/presentation/pages/cat_ui.dart';
import 'package:flutter/material.dart';

import 'dependency/dependency_injection.dart';

void main() {
  setUpAll();
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
    home: CatDesign(),
  ));
}

setUpAll() async {
  WidgetsFlutterBinding.ensureInitialized();
  initGetServiceLocator();
}
