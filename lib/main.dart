import 'package:bay_project/presentation/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  //-----------modifying rotating
  SystemChrome.setPreferredOrientations(
     [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  //-----------modifying the top

  // SystemChrome.setSystemUIOverlayStyle(
  //   const SystemUiOverlayStyle(
  //     statusBarColor: Colors.white,
  //     statusBarIconBrightness: Brightness.light,
  //     statusBarBrightness: Brightness.light
  //   )
  // );
  runApp(AppWidget());
}