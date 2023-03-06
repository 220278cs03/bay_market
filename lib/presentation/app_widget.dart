import 'package:bay_project/domain/cubit.dart';
import 'package:bay_project/presentation/pages/home/home_page.dart';
import 'package:bay_project/presentation/pages/no_internet.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'auto_route.gr.dart';

class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key);
 final appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerDelegate: appRouter.delegate(),
          routeInformationParser: appRouter.defaultRouteParser(),
        );
        // return MaterialApp(
        //   debugShowCheckedModeBanner: false,
        //   home: BlocProvider(create: (_) => MainCubit(),
        //       child: StreamBuilder(
        //           stream: Connectivity().onConnectivityChanged,
        //           builder:  (context, data) {
        //             if (data.data == ConnectivityResult.mobile ||
        //                 data.data == ConnectivityResult.wifi) {
        //               // http.get("https://www.google.com/");
        //               return const HomePage();
        //             } else {
        //               return const NoInternetPage();
        //             }
        //       },
        //       )),
        // );
      },
    );
  }
}
